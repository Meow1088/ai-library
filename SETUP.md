# AI Library — Hướng dẫn cài đặt trên máy mới / VPS

Git repo này **chỉ chứa cấu trúc** (manifest + script + tài liệu), **không chứa repo con**.
Sau khi clone repo này về, chạy script để tải toàn bộ thư viện.

## Yêu cầu

- `git` đã cài (`git --version` để kiểm tra)
- Dung lượng trống ~5–10GB (tùy số repo bật trong `repos.txt`)

## Cài trên Windows

```powershell
# 1. Bật long paths (bắt buộc — vài repo có path dài hơn 260 ký tự)
git config --global core.longpaths true

# 2. Lấy cấu trúc thư viện về (hoặc copy nguyên thư mục này)
git clone <url-repo-nay> AI-Library
cd AI-Library

# 3. Tải toàn bộ repo trong manifest
.\clone.ps1

# Cập nhật về sau
.\update.ps1
```

## Cài trên Linux / VPS (Debian, Ubuntu)

```bash
sudo apt install -y git
git clone <url-repo-nay> ai-library
cd ai-library
chmod +x clone.sh update.sh
./clone.sh      # tải toàn bộ repo trong manifest

./update.sh     # cập nhật về sau
```

## Tùy chỉnh danh sách repo

- Mở `repos.txt`: mỗi dòng `Category|URL`, dòng `#` là tắt/comment.
- Repo nặng ít dùng (OpenHands, PaddleOCR, langchain...) đang comment sẵn — bỏ `#` nếu cần.
- Thêm repo mới: thêm dòng vào `repos.txt` → chạy lại `clone.ps1`/`clone.sh` (repo đã có sẽ tự skip) → thêm 1 dòng mô tả vào `INDEX.md`.

## Cách dùng

Đọc `AGENTS.md` (quy tắc cho Claude Code + Codex) và `INDEX.md` (mục lục repo + keyword).
