# AI Library

Thư viện repo tham khảo dùng chung cho Claude Code và Codex. Khi cần code, AI tra thư viện trước (INDEX → grep repo → Context7 → tự viết), không viết lại thứ đã có.

Repo này chỉ chứa **cấu trúc** (manifest + script + docs). Các repo tham khảo (~2.9GB) nằm local, không lên git — máy mới tự tải bằng script.

## Cài đặt

```powershell
# Windows
git clone https://github.com/Meow1088/ai-library "D:\Goc Cua Meo\00.Claude\01.AI-Library"
cd "D:\Goc Cua Meo\00.Claude\01.AI-Library"
.\clone.ps1
```

```bash
# Linux / VPS
git clone https://github.com/Meow1088/ai-library ~/ai-library
cd ~/ai-library && bash clone.sh
```

Chi tiết: [SETUP.md](SETUP.md)

## File chính

| File | Vai trò |
| --- | --- |
| `repos.txt` | Manifest — source of truth, format `Category\|URL`, dòng `#` = tắt |
| `INDEX.md` | Danh mục repo: path, mô tả, keyword để grep |
| `AGENTS.md` | Quy tắc AI tra thư viện (CLAUDE.md là stub trỏ sang) |
| `clone.ps1` / `clone.sh` | Tải repo trong manifest về (`--depth 1`) |
| `update.ps1` / `update.sh` | Pull các repo theo manifest, báo repo lệch manifest |

## Thêm repo mới

1. Thêm dòng `Category|URL` vào `repos.txt`
2. Chạy `clone.ps1` (hoặc `clone.sh`)
3. Thêm dòng mô tả vào `INDEX.md`
4. Commit + push
