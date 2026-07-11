<div align="center">

# 🧠 AI Library

**Thư viện repo tham khảo cho AI coding agent — tra trước, viết sau.**

![Repos](https://img.shields.io/badge/repos-38-blue)
![Categories](https://img.shields.io/badge/categories-8-purple)
![Clone](https://img.shields.io/badge/clone-‑‑depth%201-green)
![Agents](https://img.shields.io/badge/agents-Claude%20Code%20·%20Codex-orange)

*Code mẫu chuẩn từ những repo tốt nhất — để AI không phải bịa lại thứ thế giới đã viết.*

</div>

---

## Triết lý

1. **Tra trước, viết sau** — khi cần code, AI tra thư viện trước (`INDEX.md` → grep repo → Context7 → tự viết). Không phát minh lại bánh xe.
2. **Manifest là source of truth** — `repos.txt` quyết định thư viện có gì. Đĩa lệch manifest là có cảnh báo.
3. **Không over-engineering** — không VectorDB, không MCP server, không search engine. Grep + INDEX là đủ.

## Cách hoạt động

```
Cần code mẫu
    │
    ▼
INDEX.md ──── tìm repo theo keyword
    │
    ▼
grep repo ─── đọc code thật, pattern thật
    │
    ▼
Context7 ──── docs mới nhất nếu cần version cụ thể
    │
    ▼
Tự viết ───── chỉ khi thư viện không có
```

Repo này chỉ chứa **cấu trúc** (manifest + script + docs). Các repo tham khảo nằm local, không lên git — máy mới tự tải bằng script.

## Kho có gì

| Category | Repo tiêu biểu | Dùng khi |
| --- | --- | --- |
| 🐦 **Flutter** | samples, riverpod, flutter_animate, fl_chart, Best-Flutter-UI-Templates | Dựng UI, state, animation, chart |
| 🤖 **Android** | nowinandroid, compose-samples | Kiến trúc chuẩn Google, Compose |
| 🧠 **AI / Agent** | langgraph, langchain, claude-cookbooks, browser-use, crawl4ai, OpenHands | Multi-agent, RAG, browser agent, scraping |
| ⚙️ **Automation** | n8n, activepieces | Workflow tự động, webhook, node |
| 🐍 **Python** | fastapi, playwright-python, python-telegram-bot | API async, browser automation, bot Telegram |
| 📈 **Trading** | freqtrade, ccxt, vectorbt, hummingbot, pandas-ta | Bot, backtest, kết nối sàn, indicator |
| 📄 **Office** | markitdown, PyMuPDF, PaddleOCR, docling | PDF, convert tài liệu, OCR |
| 🎨 **Content** | ComfyUI | Workflow gen ảnh/video |

Danh mục đầy đủ kèm keyword để grep: **[INDEX.md](INDEX.md)**

## Cài đặt

```powershell
# Windows
git clone https://github.com/Meow1088/ai-library
cd ai-library
.\clone.ps1
```

```bash
# Linux / WSL / VPS
git clone https://github.com/Meow1088/ai-library
cd ai-library && bash clone.sh
```

Tất cả clone `--depth 1` cho nhẹ. Chi tiết: [SETUP.md](SETUP.md)

## Cấu trúc

| File | Vai trò |
| --- | --- |
| `repos.txt` | Manifest — source of truth, format `Category\|URL`, dòng `#` = tắt |
| `INDEX.md` | Danh mục repo: path, mô tả, keyword để grep |
| `AGENTS.md` | Quy tắc AI tra thư viện (`CLAUDE.md` là stub trỏ sang) |
| `CONVENTIONS.md` | Stack & pattern ưa chuộng — AI đọc trước khi chọn thư viện |
| `clone.ps1` / `clone.sh` | Tải repo còn thiếu theo manifest, skip repo đã có |
| `update.ps1` / `update.sh` | Pull toàn bộ theo manifest, báo repo lệch manifest, summary + exit code |

## Thêm repo mới

```
1. Thêm dòng  Category|URL  vào repos.txt
2. Chạy clone.ps1 (hoặc clone.sh)
3. Thêm 1 dòng mô tả + keyword vào INDEX.md
4. Commit + push
```

Repo nặng hoặc ít dùng? Comment `#` trong `repos.txt` — script tự bỏ qua, bỏ `#` khi cần lại.

## Cập nhật thư viện

```powershell
.\update.ps1    # Windows — kỳ vọng: "N OK, 0 lỗi, 0 chưa clone"
```

```bash
bash update.sh  # Linux — đã verify trên Ubuntu 24.04
```

---

<div align="center">

*Xây cho [Claude Code](https://claude.com/claude-code) và Codex — nhưng agent nào biết grep cũng dùng được.*

</div>
