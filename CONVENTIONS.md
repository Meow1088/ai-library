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
| AI agent | Workflow dạng graph | LangGraph | `AI\langgraph` |
| AI agent | Multi-agent theo vai trò | CrewAI | `AI\crewAI` |
| Trading | Kết nối sàn | ccxt (API thống nhất) | `Trading\ccxt` |
| Trading | Backtest | vectorbt (quét nhanh) / backtrader (chi tiết) | `Trading\vectorbt`, `Trading\backtrader` |
| Office | Đọc PDF | PyMuPDF | `Office\PyMuPDF` |
| Office | Convert sang Markdown | markitdown | `Office\markitdown` |
| Office | OCR | PaddleOCR | `Office\PaddleOCR` |

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

## Quy tắc riêng của thư viện

- **Không sửa code trong repo con** — repo con là tài liệu tham khảo read-only; muốn dùng thì copy pattern ra project.
- Code lấy từ repo mẫu phải hiểu rồi mới dùng, không copy mù.
- Repo con được pull thường xuyên — không hardcode path file cụ thể của repo con vào project.
