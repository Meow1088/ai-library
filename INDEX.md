# AI Library — INDEX

> Tra bảng này trước khi grep cả thư viện. Mỗi repo 1 dòng: path, dùng làm gì, keyword.
> Khi thêm repo mới (qua `repos.txt` + `clone.ps1`/`clone.sh`), thêm 1 dòng vào đây.
> Cập nhật: 2026-07-11 — 29 repo / 7 category (28 git + 1 zip), clone --depth 1.

## Tra theo nhu cầu

> Việc thường gặp → repo nào, xem chỗ nào. Grep trong thư mục gợi ý trước.

| Cần làm gì | Repo | Xem ở đâu |
|---|---|---|
| UI màn hình hoàn chỉnh (login, dashboard...) | Best-Flutter-UI-Templates, flutter-ui-screens | root theo tên app mẫu |
| State management Flutter | riverpod | `examples/` |
| Animation Flutter | flutter_animate | `example/` |
| Chart / biểu đồ | fl_chart | `example/` |
| Kiến trúc app chuẩn (Compose) | nowinandroid | `feature/`, `core/` |
| Multi-agent / workflow AI | langgraph, crewAI, autogen | `examples/` mỗi repo |
| RAG / chain / retriever | langchain | `libs/langchain/`, `docs/` |
| Coding agent + sandbox | OpenHands | `openhands/` |
| API async Python | fastapi | `docs_src/` (example theo chủ đề) |
| Scraping / browser automation | playwright-python | `examples/`, `tests/` |
| Kết nối sàn crypto | ccxt | `examples/` |
| Backtest chiến lược | vectorbt (nhanh), backtrader (truyền thống), freqtrade (bot đủ) | vectorbt `examples/`, backtrader `samples/` |
| OCR (có tiếng Việt) | PaddleOCR | `paddleocr/`, `docs/` |
| PDF / convert tài liệu | PyMuPDF, markitdown | `docs/`, `packages/` |
| Workflow automation | n8n, activepieces | `packages/nodes-base/`, `packages/pieces/` |

## Flutter

| Repo | Path | Dùng làm gì | Keyword |
|---|---|---|---|
| awesome-flutter | `Flutter\awesome-flutter` | Danh mục package/tutorial Flutter — tra cứu tìm package theo nhu cầu | awesome, list, package |
| samples | `Flutter\samples` | Sample chính thức của Flutter team — pattern chuẩn cho mọi chủ đề (navigation, isolate, add-to-app, desktop...) | sample, official, pattern, demo |
| Best-Flutter-UI-Templates | `Flutter\Best-Flutter-UI-Templates` | Template UI hoàn chỉnh (hotel, fitness, course...) — copy layout/screen | ui, template, screen, card |
| flutter_animate | `Flutter\flutter_animate` | Animation declarative 1 dòng — fade, scale, slide, shimmer, blur | animation, fade, scale, slide, shimmer |
| flex_color_scheme | `Flutter\flex_color_scheme` | Theme Material 3 nâng cao — light/dark, color scheme | theme, material3, dark mode, color |
| riverpod | `Flutter\riverpod` | State management chuẩn — provider, async, codegen; xem `examples/` | state, provider, riverpod, async |
| fl_chart | `Flutter\fl_chart` | Chart thuần Dart — line, bar, pie, radar; xem `example/` | chart, graph, line, bar, pie |
| getwidget | `Flutter\getwidget` | Thư viện widget dựng sẵn (button, card, carousel...) | widget, button, card, carousel |
| flutter-ui-screens | `Flutter\flutter-ui-screens-main` | Bộ screen UI mẫu (bản zip, không update được) | ui, screen, login, onboarding |

## Android

| Repo | Path | Dùng làm gì | Keyword |
|---|---|---|---|
| awesome-android-ui | `Android\awesome-android-ui` | Danh mục thư viện UI Android — tra cứu | awesome, ui, animation |
| nowinandroid | `Android\nowinandroid` | App mẫu chính thức Google — kiến trúc chuẩn Compose + Hilt + Room | compose, architecture, hilt, modular |
| compose-samples | `Android\compose-samples` | Bộ sample Jetpack Compose chính thức (JetNews, Jetsnack...) | compose, sample, ui, animation |

## AI / Agent

| Repo | Path | Dùng làm gì | Keyword |
|---|---|---|---|
| langgraph | `AI\langgraph` | Framework agent dạng graph — state machine, multi-agent, checkpoint | agent, graph, workflow, langchain |
| crewAI | `AI\crewAI` | Multi-agent theo vai trò (crew) — task delegation | agent, crew, role, multi-agent |
| autogen | `AI\autogen` | Framework multi-agent của Microsoft — conversation, group chat | agent, autogen, conversation, microsoft |
| OpenHands | `AI\OpenHands` | Coding agent tự hành hoàn chỉnh — sandbox, browser, runtime; xem `openhands/` | coding agent, sandbox, autonomous, runtime |
| langchain | `AI\langchain` | Framework LLM app — chain, RAG, retriever, integration; xem `libs/langchain/` | llm, rag, chain, retriever, embedding |

## Automation

| Repo | Path | Dùng làm gì | Keyword |
|---|---|---|---|
| n8n | `Automation\n8n` | Workflow automation self-host — node, trigger, webhook; tham khảo khi làm Ai-bao-gia | workflow, automation, webhook, node |
| activepieces | `Automation\activepieces` | Workflow automation TypeScript — connector (pieces) dễ đọc; xem `packages/pieces/` | workflow, pieces, connector, typescript |

## Python

| Repo | Path | Dùng làm gì | Keyword |
|---|---|---|---|
| fastapi | `Python\fastapi` | Web framework async — API, dependency injection; docs trong `docs/` | api, async, web, pydantic |
| playwright-python | `Python\playwright-python` | Browser automation — scraping, testing | browser, scraping, automation, test |

## Trading

| Repo | Path | Dùng làm gì | Keyword |
|---|---|---|---|
| freqtrade | `Trading\freqtrade` | Bot trading crypto hoàn chỉnh — strategy, backtest, risk, hyperopt | bot, strategy, backtest, risk |
| ccxt | `Trading\ccxt` | Thư viện kết nối 100+ sàn — API thống nhất (OKX, Binance...) | exchange, api, okx, binance |
| vnstock | `Trading\vnstock` | Dữ liệu chứng khoán VN — giá, tài chính, VNIndex | vietnam, stock, vnindex, data |
| backtrader | `Trading\backtrader` | Backtest framework truyền thống — strategy, indicator, broker sim; xem `samples/` | backtest, strategy, indicator, cerebro |
| vectorbt | `Trading\vectorbt` | Backtest vectorized (pandas/numba) — quét tham số nhanh, portfolio; xem `examples/` | backtest, vectorized, portfolio, numba |

## Office

| Repo | Path | Dùng làm gì | Keyword |
|---|---|---|---|
| markitdown | `Office\markitdown` | Convert mọi file (PDF, Word, Excel, ảnh) sang Markdown — hữu ích cho pipeline AI | pdf, word, excel, markdown, convert |
| PyMuPDF | `Office\PyMuPDF` | Đọc/ghi/render PDF tốc độ cao — extract text, table, ảnh | pdf, extract, render, text |
| PaddleOCR | `Office\PaddleOCR` | OCR đa ngôn ngữ (có tiếng Việt) — detect + recognize, có MCP server; xem `paddleocr/` | ocr, text detection, vietnamese, recognize |

## Repo tắt trong repos.txt (bỏ `#` nếu cần rồi chạy clone.ps1/clone.sh)

(Hiện không có — toàn bộ repo trong manifest đã bật)
