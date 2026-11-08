# CONVENTIONS — Stack & pattern ưa chuộng

> AI đọc file này khi bắt đầu code để chọn đúng công cụ, không tự chọn thư viện khác khi thư viện đã có chuẩn.
> Quy trình tra cứu ở `AGENTS.md`, danh mục repo ở `INDEX.md`.

## Chọn stack theo domain

| Domain | Việc | Chuẩn ưa chuộng | Repo mẫu |
|---|---|---|---|
| Flutter | State management | Riverpod | `Flutter\riverpod` |
| Flutter | Theme | flex_color_scheme (Material 3, light+dark) | `Flutter\flex_color_scheme` |
| Flutter | Animation | flutter_animate | `Flutter\flutter_animate` |
| Flutter | Chart | fl_chart | `Flutter\fl_chart` |
| Android | Kiến trúc | Theo nowinandroid (Compose + Hilt + Room, module hóa) | `Android\nowinandroid` |
| Python | API | FastAPI async | `Python\fastapi` |
| Python | Browser/scraping | Playwright | `Python\playwright-python` |
| Python | Bot Telegram | python-telegram-bot | `Python\python-telegram-bot` |
| AI agent | Workflow dạng graph | LangGraph | `AI\langgraph` |
| AI agent | Multi-agent theo vai trò | CrewAI | `AI\crewAI` |
| Trading | Kết nối sàn | ccxt (API thống nhất) | `Trading\ccxt` |
| Trading | Backtest | vectorbt (quét nhanh) / backtrader (chi tiết) | `Trading\vectorbt`, `Trading\backtrader` |
| Office | Đọc PDF | PyMuPDF | `Office\PyMuPDF` |
| Office | Convert sang Markdown | markitdown | `Office\markitdown` |
| Office | OCR | PaddleOCR | `Office\PaddleOCR` |
| Content | Gen ảnh/video workflow | ComfyUI | `Content\ComfyUI` |

## Coding style

- **Đơn giản trước** — code ít nhất giải đúng bài toán; không speculative feature, không abstraction sớm.
- **Thay đổi phẫu thuật** — chỉ đụng file liên quan trực tiếp; không refactor tiện tay.
- **Không bịa** — API/config không chắc thì đọc repo mẫu trong thư viện hoặc tra Context7, không đoán.
- **Error handling tường minh** — không nuốt lỗi im lặng; fail nhanh với message rõ.
- **Immutable ưu tiên** — trả bản copy mới thay vì mutate, trừ hot path có lý do đo được.
- Đặt tên: `camelCase` (biến/hàm), `PascalCase` (class/type), `UPPER_SNAKE_CASE` (hằng số); boolean có prefix `is/has/should`.

## Kiến trúc

- Ưu tiên cấu trúc phẳng, luồng dữ liệu tường minh; tránh factory/registry/DI khi chưa cần.
- Nhiều file nhỏ cohesive hơn một file to (~200-400 dòng/file, max 800).
- Trading/realtime: fail closed, bounded queue, idempotent handler, không unbounded retry.

## Pattern học từ repo (copy ý, không import)

### Từ `AI\agent-reach` — tool/kênh ngoài cho agent

| Pattern | Dùng khi | Ý chính | File mẫu |
|---|---|---|---|
| **Probe thật, không `which()`** | Health check / doctor cho tool CLI ngoài (yt-dlp, ffmpeg, rclone, venv tool) | Chạy thật lệnh vô hại (`--version`), phân loại 5 trạng thái: `ok / missing / broken / timeout / error`. `broken` = `which()` thấy nhưng exec lỗi (`FileNotFoundError`, exit 126/127) — hay gặp khi venv mất interpreter sau nâng Python. Chỉ retry `timeout/error`, không retry `missing/broken`. Mỗi trạng thái kèm `hint` cách sửa | `agent_reach/probe.py` |
| **Backend list có thứ tự + fallback** | Một việc có nhiều nguồn (nguồn giá, nguồn tải, API chính/phụ) | `backends = [ưu tiên, dự phòng...]`; `check()` probe lần lượt, ghi `active_backend` = cái đang chạy thật (None nếu hết). Đổi nguồn = đổi thứ tự list hoặc override `<kênh>_backend` qua config/env, không sửa code. Override không hợp lệ thì bỏ qua (không được che backend đang tốt) | `agent_reach/channels/base.py` |
| **Scrub secret ở biên output** | Mọi chỗ in log / trả text cho agent / gửi Telegram có thể chứa URL | Regex che `user:pass@` trong URL và giá trị query `token/key/password/secret/sig/session/cookie=` → `***`. Gọi 1 lần ở hàm output chung, không rải từng chỗ | `agent_reach/utils/text.py` |
| **Ghi config atomic + chmod 600** | File chứa key/cookie/token | `mkstemp` cùng thư mục → ghi → `fchmod 600` → `os.replace` (atomic). Từ chối nếu target/thư mục là symlink. Lỗi giữa chừng thì xoá file tạm | `agent_reach/config.py` (`_atomic_write_yaml`) |
| **Contract test cho adapter** | Có nhiều adapter cùng interface (kênh, sàn, nguồn dữ liệu) | 1 test lặp qua registry: tên unique, field bắt buộc có, `check()` chỉ trả status trong tập cho phép, kể cả khi mọi dependency vắng (`monkeypatch shutil.which → None`). Thêm adapter mới là tự được test | `tests/test_channel_contracts.py` |
| **Skill = router, không wrapper** | Viết SKILL.md cho agent dùng nhiều CLI | `description` liệt kê trigger (từ khoá + nền tảng) và **NOT for**; thân SKILL chỉ có bảng định tuyến + lệnh hay dùng; chi tiết tách `references/<nhóm>.md` đọc khi cần. Agent gọi thẳng CLI gốc, không qua lớp bọc | `agent_reach/skill/SKILL.md` |

## Quy tắc riêng của thư viện

- **Không sửa code trong repo con** — repo con là tài liệu tham khảo read-only; muốn dùng thì copy pattern ra project.
- Code lấy từ repo mẫu phải hiểu rồi mới dùng, không copy mù.
- Repo con được pull thường xuyên — không hardcode path file cụ thể của repo con vào project.
