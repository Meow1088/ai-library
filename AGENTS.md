# AI Library — Quy tắc sử dụng (dùng chung cho Claude Code và Codex)

Thư mục này là **thư viện tham khảo**, KHÔNG phải dự án. Không sửa code trong các repo con.

## Cấu trúc

```
01.AI-Library\
├── Flutter\        repo Flutter (UI, theme, animation, chart...)
├── Android\        repo Android native / Compose
├── AI\             framework agent (langgraph, crewAI, autogen...)
├── Automation\     n8n và công cụ automation
├── Python\         fastapi, playwright...
├── Trading\        freqtrade, ccxt, vnstock...
├── Office\         xử lý PDF/Excel/OCR (markitdown, PyMuPDF...)
├── Content\        gen ảnh/video (ComfyUI...)
├── Audio\          TTS / speech (VieNeu-TTS...)
├── Reference\      danh mục tra cứu tổng quát (build-your-own-x...)
├── repos.txt       manifest — danh sách repo (Category|URL)
├── clone.ps1       clone repo còn thiếu theo repos.txt (--depth 1)
├── update.ps1      git pull toàn bộ repo đã clone
├── INDEX.md        mục lục repo + keyword — TRA FILE NÀY TRƯỚC
├── CONVENTIONS.md  stack/pattern ưa chuộng — đọc khi bắt đầu code
└── AGENTS.md       file này
```

## Quy trình khi cần code (routing)

Khi làm việc ở bất kỳ dự án nào mà cần viết tính năng mới:

1. **Đọc `INDEX.md`** — tìm repo/keyword liên quan (bảng "Tra theo nhu cầu" trước). Chọn stack theo `CONVENTIONS.md`.
2. **Search trong repo liên quan** (grep theo keyword, đọc example/README của repo đó).
3. Nếu thư viện không có → tra docs chính thức (Context7 nếu có).
4. Nếu vẫn không có → tự viết.

**Không tự viết lại thứ thư viện đã có sẵn.** Ưu tiên copy/adapt code mẫu đã được kiểm chứng.

## Thêm repo mới

1. Thêm dòng `<Category>|<Git URL>` vào `repos.txt` (category mới sẽ tự tạo thư mục).
2. Chạy `.\clone.ps1`.
3. Thêm 1 dòng mô tả vào `INDEX.md` (path, dùng làm gì, keyword).

## Quy ước

- Repo chỉ để đọc/tham khảo — mọi thay đổi code làm trong dự án thật (`02.Ai Bot`, `03.APP`...), không làm ở đây.
- Clone luôn dùng `--depth 1`. Repo nặng/ít dùng thì comment `#` trong repos.txt.
- Repo không còn dùng: xóa thư mục + xóa dòng trong repos.txt + INDEX.md.
