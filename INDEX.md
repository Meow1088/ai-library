# AI Library — INDEX

> Tra bảng này trước khi grep cả thư viện. Mỗi repo 1 dòng: path, dùng làm gì, keyword.
> Khi thêm repo mới (qua `repos.txt` + `clone.ps1`/`clone.sh`), thêm 1 dòng vào đây.
> Cập nhật: 2026-10-26 — 61 repo / 11 category, clone --depth 1.

## Tra theo nhu cầu

> Việc thường gặp → repo nào, xem chỗ nào. Grep trong thư mục gợi ý trước.

| Cần làm gì | Repo | Xem ở đâu |
|---|---|---|
| UI màn hình hoàn chỉnh (login, dashboard...) | Best-Flutter-UI-Templates | root theo tên app mẫu |
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
| Recipe Claude API (tool use, agent, vision, skill, eval, giảm chi phí) | claude-cookbooks | `capabilities/`, `tool_use/`, `claude_agent_sdk/`, `patterns/agents/`, `cost_optimization/`, `skills/` |
| Recipe OpenAI API | openai-cookbook | `examples/` |
| Browser agent (LLM điều khiển browser) | browser-use | `examples/`, `browser_use/` |
| Crawl web ra markdown cho LLM | crawl4ai | `docs/`, `crawl4ai/` |
| Bot Telegram | python-telegram-bot | `examples/` |
| Indicator kỹ thuật (RSI, MACD...) | pandas-ta-classic | `pandas_ta_classic/`, `examples/` |
| Market making / arbitrage | hummingbot | `hummingbot/`, `scripts/` |
| App Flutter production thật | localsend | `app/`, `core/` |
| Parse tài liệu phức tạp (layout, bảng) | docling | `docling/`, `docs/` |
| Gen ảnh/video workflow | ComfyUI | `comfy/`, `comfy_extras/` |
| Dựng video/intro bằng code (không AI gen) + nhạc tổng hợp + QA gate | code-showreel | `render.py`, `music.py`, `check.py`, `.claude/skills/code-showreel/` |
| Giới hạn chi tiêu / policy engine cho agent hoặc bot (kiểm ngoài LLM) | automaton | `src/agent/policy-rules/`, `src/types.ts` |
| Tra cứu best practice Claude Code (agents, commands, skills, hooks, MCP, workflow) | claude-code-best-practice | `best-practice/`, `implementation/`, `orchestration-workflow/` |
| PDF ghép/tách/nén nhẹ (Python) | KillerPDF | root |
| Học cách tự viết lại hệ thống từ đầu (compiler, database, git, docker, redis...) | build-your-own-x | root (README danh mục theo chủ đề, đa ngôn ngữ) |
| PDF app đầy đủ tính năng (edit, sign, OCR, convert, merge/split, API) | Stirling-PDF | `app/`, `docs/` |
| PDF desktop app (Electron) giao diện tiếng Việt, xử lý offline | cit-pdf | `desktop/src/`, `src/` |
| TTS tiếng Việt + voice cloning | VieNeu-TTS | `examples/`, `src/` |
| Context DB / memory cho agent (VFS + git versioning) | OpenViking | `crates/ragfs/`, `openviking/retrieve/` |
| Cài / trim Claude Code (giảm context) | everything-claude-code | `scripts/install-plan.js`, `manifests/` |
| Cho agent đọc nội dung sau tường đăng nhập (Twitter/Reddit/XHS/LinkedIn) + pattern doctor/probe/skill-router | agent-reach | `agent_reach/probe.py`, `agent_reach/channels/base.py`, `agent_reach/skill/` |
| Vẽ diagram HTML tương tác (architecture/sequence/ERD/workflow…) hoặc trang explainer từ mô tả / repo code | archify | `archify/SKILL.md`, `archify/schemas/`, `archify/examples/` |
| Pháp lý/thuế công ty một người VN, chuyển HKD lên công ty, bảng hiệu lực văn bản | opc-vn-business-law | `references/00-legal-status.md`, `references/06-conversion-playbook.md`, `assets/` |
| Kho skill cho agent (150 skill đóng gói sẵn: devops, finance, research, creative, mlops...) | hermes-agent | `optional-skills/` theo nhóm |

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
| localsend | `Flutter\localsend` | App production thật (share file cross-platform, Riverpod) — tham khảo kiến trúc app hoàn chỉnh; xem `app/` | production, architecture, riverpod, cross-platform |

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
| claude-cookbooks | `AI\claude-cookbooks` | Recipe chính thức Claude API — tool use, agent SDK, vision, extended thinking, **Skills**, **eval**, **cost optimization** (prompt caching / Batch API −50%), **Managed Agents**, 5 pattern agent (chaining, routing, parallel, orchestrator-workers, evaluator-optimizer); xem `capabilities/`, `tool_use/`, `patterns/agents/`, `cost_optimization/`, `skills/`, `managed_agents/` | claude, anthropic, tool use, agent sdk, recipe, skill, eval, prompt cache, batch, classification, rag, citation |
| openai-cookbook | `AI\openai-cookbook` | Recipe chính thức OpenAI API — 260 notebook theo chủ đề; xem `examples/` (lưu ý: repo sparse-checkout, xem ghi chú cuối file) | openai, gpt, recipe, notebook |
| browser-use | `AI\browser-use` | Agent điều khiển browser bằng LLM (Playwright) — form, click, extract; xem `examples/` | browser agent, playwright, automation, llm |
| crawl4ai | `AI\crawl4ai` | Crawler tối ưu cho LLM — output markdown sạch, extract có cấu trúc; xem `docs/` | crawl, scraping, markdown, extract |
| claude-code-best-practice | `AI\claude-code-best-practice` | Tổng hợp best practice Claude Code — agents, commands, skills, hooks, MCP, settings, orchestration (Command→Agent→Skill), so sánh nhiều dev workflow (Superpowers, Spec Kit...); xem `best-practice/`, `implementation/`, `orchestration-workflow/`, `tips/` | claude code, agent, command, skill, hook, mcp, workflow, best practice |
| agent-reach | `AI\agent-reach` | CLI cho agent đọc/search 15 nền tảng (Twitter, Reddit, YouTube, GitHub, Bilibili, 小红书, LinkedIn, RSS, web) — **KHÔNG phải wrapper**: nó chỉ cài tool upstream + `doctor` + SKILL.md dạy agent gọi CLI gốc. Học: probe thật thay vì `which()` (`probe.py`), backend list có thứ tự + fallback (`channels/base.py`), scrub secret ở output boundary (`utils/text.py`), atomic write chmod 600 chống symlink (`config.py`), contract test cho adapter (`tests/test_channel_contracts.py`). Cookie login = rủi ro khoá acc, xem SECURITY.md trước khi dùng thật | agent, cli, scraping, twitter, reddit, youtube, cookie, doctor, health check, probe, fallback, skill, mcp |
| hermes-agent | `AI\hermes-agent` | Agent tự hành của NousResearch — bản upstream của Hermes đang chạy trên CT102. Giá trị chính: **`optional-skills/` 150 skill viết sẵn** (docker, ast-grep, grill-me, stocks, mlops, creative...) để bốc sang Hermes, và **cách dựng system prompt 3 tầng stable/context/volatile** (`agent/system_prompt.py`) — chỉ mục skill nằm đầu dải volatile để không phá prefix cache. Xem thêm `tools/` (memory frozen-snapshot, skills progressive disclosure) | agent, hermes, skill, system prompt, prompt cache, memory, cron, telegram |
| OpenViking | `AI\OpenViking` | Context database cho agent (ByteDance/Volcengine). Rust core `crates/ragfs` = VFS thuần (plugin localfs/s3fs/memfs/kvfs/sqlfs/queuefs + git tự cài trên gitoxide + lock + AES-GCM) — **Apache-2.0**, sạch, đáng đọc/mượn. Não (L0/L1/L2, embedding, retrieval) nằm ở Python `openviking/retrieve`, `session`, `storage` — **AGPL-3.0**. Repo 0.4.x, đổi API nhanh. | context db, agent memory, rag, vfs, rust, ragfs, mcp |
| everything-claude-code (ECC) | `AI\everything-claude-code` | **Không phải repo tham khảo — đây là bộ cài Claude Code.** Chạy `install.ps1` từ đây để cài theo profile/module thay vì bật plugin full (plugin full = 281 skill ≈ 18k token nạp mỗi phiên). Xem plan trước khi cài: `node scripts/install-plan.js --list-profiles` hoặc `--modules <ids>`. Cần `npm install` một lần. | ecc, install, profile, module, context, skill, token |
| automaton | `AI\automaton` | Runtime TypeScript cho agent tự hành có ví (Conway Research): ReAct + heartbeat + SOUL.md, tự sửa code, sinh agent con. **"AI tự kiếm tiền" chỉ là prompt, không có cơ chế thu tiền.** Đáng học: treasury policy kiểm ngoài LLM (`src/types.ts` `DEFAULT_TREASURY_POLICY`), policy rule mỗi file (`src/agent/policy-rules/`), loop detector (`src/agent/loop-detector.ts`), hạ model theo ngân sách (`src/inference/router.ts`), memory nhiều lớp (`src/memory/`). Phân tích đầy đủ: `00.Claude\04.Docs\automaton-research.md`. Chỉ chạy thử trong CT cô lập, ví vài USD | agent, autonomous, policy engine, spend limit, treasury, loop detector, memory, x402, wallet, survival |
| knowledge-work-plugins | `AI\knowledge-work-plugins` | Plugin chính chủ Anthropic cho Claude Cowork/Claude Code theo nghề (finance, legal, sales, data, productivity, HR...) — mỗi plugin gói skill + connector + slash command + sub-agent; mẫu chuẩn để tự viết plugin/skill. **Apache-2.0** | plugin, skill, cowork, claude code, connector, finance, legal |
| Windows-MCP | `AI\Windows-MCP` | MCP server cho computer use trên Windows 10/11 (Python ≥3.14, MIT): điều khiển app qua UI Automation (`src/uia`, `src/tree`), PowerShell, registry, filesystem, process | mcp, windows, computer use, uia, automation, desktop |
| opc-vn-business-law | `AI\opc-vn-business-law` | Skill tham khảo pháp lý–thuế–kế toán cho công ty một người VN (Diginno, CC-BY-4.0 + script MIT, mốc 17/10/2026): chọn mô hình HKD/DNTN/TNHH MTV, checklist chuyển HKD lên công ty, Chủ tịch công ty (Đ85 LDN), kế toán trưởng (NĐ174/TT58/2026), dự thảo Luật DNNVV 2026 Đ20 k8. Đáng học: **bảng trạng thái hiệu lực văn bản** (`references/00-legal-status.md`) làm cổng trước khi trích dẫn. **KHÔNG cài làm skill** (description "BẮT BUỘC dùng" quá rộng). Lỗi soát 26/10: còn hướng dẫn lệ phí môn bài + thuế khoán (NQ 198/2025 đã bỏ từ 01/01/2026 — cần đối chiếu), thiếu miễn TNDN 3 năm DN mới; ví dụ 8 tỷ dùng 20% trong khi bảng ghi 17%; `so_sanh_thue.py:chuan_hoa_ty_le` nhập `--ty-le 1` (1%) bị báo lỗi | pháp lý, thuế, kế toán, tnhh mtv, hộ kinh doanh, chuyển đổi, kế toán trưởng, dnnvv, skill, vietnam |
| archify | `AI\archify` | Agent skill vẽ diagram (Apache-2.0, v3.2): agent viết **JSON-IR** theo schema → `archify/bin/archify.mjs finalize` render ra 1 file HTML standalone tương tác (10 loại: architecture, workflow, sequence, dataflow, lifecycle, erd, class, tree, timeline, waterfall + explainer 1 trang). Node ≥18 thuần, **không cần npm install**; gate validate→deliver→check→browser-check (dùng Chrome máy). Test laptop 25/10: `doctor` OK, `finalize` sequence pass ~12s. Có update-check gọi `tt-a1i.github.io` — tắt bằng env `ARCHIFY_UPDATE_CHECK_DISABLED=1`. Đáng học: LLM viết IR có schema thay vì vẽ SVG trực tiếp, validator sinh sẵn, atomic delivery giữ bản tốt cuối (`bin/finalize.mjs`) | diagram, architecture, sequence, erd, mermaid, html, skill, visualization, explainer, json schema |

## Automation

| Repo | Path | Dùng làm gì | Keyword |
|---|---|---|---|
| n8n | `Automation\n8n` | Workflow automation self-host — node, trigger, webhook; tham khảo khi làm Ai-bao-gia | workflow, automation, webhook, node |
| activepieces | `Automation\activepieces` | Workflow automation TypeScript — connector (pieces) dễ đọc; xem `packages/pieces/` | workflow, pieces, connector, typescript |
| n8n-workflows, n8n-templates (×2), n8nworkflows.xyz | `Automation\...` | Kho workflow n8n mẫu (JSON) để import/tham khảo | n8n, workflow, template, json |
| snmp-topo-lan-card | `Automation\snmp-topo-lan-card` | Card Home Assistant Lovelace vẽ sơ đồ LAN (ISP → pfSense → switch → cổng) từ SNMP Switch Manager, flow theo băng thông thật; 1 file `snmp-topo-lan-card.js`, MIT | home assistant, snmp, lan, topology, pfsense, switch, lovelace |

## Python

| Repo | Path | Dùng làm gì | Keyword |
|---|---|---|---|
| fastapi | `Python\fastapi` | Web framework async — API, dependency injection; docs trong `docs/` | api, async, web, pydantic |
| playwright-python | `Python\playwright-python` | Browser automation — scraping, testing | browser, scraping, automation, test |
| python-telegram-bot | `Python\python-telegram-bot` | Framework bot Telegram chuẩn (Hermes/Meme-Bot đang dùng) — handler, webhook, polling; xem `examples/` | telegram, bot, handler, webhook |

## Trading

| Repo | Path | Dùng làm gì | Keyword |
|---|---|---|---|
| freqtrade | `Trading\freqtrade` | Bot trading crypto hoàn chỉnh — strategy, backtest, risk, hyperopt | bot, strategy, backtest, risk |
| ccxt | `Trading\ccxt` | Thư viện kết nối 100+ sàn — API thống nhất (OKX, Binance...) | exchange, api, okx, binance |
| vnstock | `Trading\vnstock` | Dữ liệu chứng khoán VN — giá, tài chính, VNIndex | vietnam, stock, vnindex, data |
| backtrader | `Trading\backtrader` | Backtest framework truyền thống — strategy, indicator, broker sim; xem `samples/` | backtest, strategy, indicator, cerebro |
| vectorbt | `Trading\vectorbt` | Backtest vectorized (pandas/numba) — quét tham số nhanh, portfolio; xem `examples/` | backtest, vectorized, portfolio, numba |
| pandas-ta-classic | `Trading\pandas-ta-classic` | 250+ indicator kỹ thuật trên pandas (continuation của pandas-ta gốc đã gỡ) | indicator, rsi, macd, ta, pandas |
| hummingbot | `Trading\hummingbot` | Bot market-making/arbitrage production-grade — connector sàn, strategy | market making, arbitrage, connector, strategy |
| OctoBot | `Trading\OctoBot` | Bot trading crypto có Web UI — monorepo `packages/` (trading, evaluators, backtesting, tentacles = plugin strategy/indicator); có connector Polymarket (ký EIP712, neg-risk) ở `packages/tentacles/Trading/Exchange/polymarket`; app GPL-3.0, tentacles LGPL-3.0 | bot, crypto, web ui, tentacles, grid, dca, polymarket |

## Office

| Repo | Path | Dùng làm gì | Keyword |
|---|---|---|---|
| markitdown | `Office\markitdown` | Convert mọi file (PDF, Word, Excel, ảnh) sang Markdown — hữu ích cho pipeline AI | pdf, word, excel, markdown, convert |
| PyMuPDF | `Office\PyMuPDF` | Đọc/ghi/render PDF tốc độ cao — extract text, table, ảnh | pdf, extract, render, text |
| PaddleOCR | `Office\PaddleOCR` | OCR đa ngôn ngữ (có tiếng Việt) — detect + recognize, có MCP server; xem `paddleocr/` | ocr, text detection, vietnamese, recognize |
| docling | `Office\docling` | Parse tài liệu phức tạp (PDF/DOCX, layout, bảng) ra format AI-ready | pdf, parse, layout, table, docx |
| KillerPDF | `Office\KillerPDF` | Ghép/tách/nén/xoay PDF gọn nhẹ bằng Python | pdf, merge, split, compress |
| Stirling-PDF | `Office\Stirling-PDF` | Web app PDF đầy đủ tính năng (edit, merge/split, OCR, convert, sign, watermark, API REST) — self-hosted qua Docker; xem `app/`, `docs/` | pdf, editor, ocr, sign, api, self-hosted, docker |
| cit-pdf | `Office\cit-pdf` | BentoPDF đóng gói Electron + Việt hoá 100% (merge/split, nén, OCR offline, ký, in) — mẫu Electron an toàn (contextIsolation, IPC) xem `desktop/src/main.ts`; AGPL-3.0 | pdf, electron, desktop, vietnamese, ocr, i18n |

## Content

| Repo | Path | Dùng làm gì | Keyword |
|---|---|---|---|
| ComfyUI | `Content\ComfyUI` | Workflow engine gen ảnh/video node-based — nền cho OneShot; xem `comfy/`, `comfy_extras/` | image, video, generation, workflow, node |
| code-showreel | `Content\code-showreel` | Video 12s dựng 100% bằng code (numpy + pillow + ffmpeg): starfield, wireframe 3D, bình minh biển, title + HUD; nhạc tổng hợp bằng numpy; `check.py` kiểm keyframe/frame đen/nháy; kèm skill Claude Code quy trình duyệt khung → render → QA | video, intro, showreel, procedural, ffmpeg, numpy, synth, audio, skill |

## Audio

| Repo | Path | Dùng làm gì | Keyword |
|---|---|---|---|
| VieNeu-TTS | `Audio\VieNeu-TTS` | TTS tiếng Việt với voice cloning tức thời (vài giây audio mẫu) — chạy on-device, real-time trên CPU, output 24kHz; xem `examples/`, `src/` | tts, text-to-speech, vietnamese, voice cloning, on-device, speech synthesis |

## Reference

| Repo | Path | Dùng làm gì | Keyword |
|---|---|---|---|
| build-your-own-x | `Reference\build-your-own-x` | Danh mục tutorial tự viết lại hệ thống thật từ đầu (compiler, database, git, docker, redis, web server, blockchain...) đa ngôn ngữ — tra khi cần hiểu cơ chế bên trong trước khi tự implement | tutorial, from scratch, compiler, database, git, docker, redis, learning |

## API

| Repo | Path | Dùng làm gì | Keyword |
|---|---|---|---|
| public-apis | `API\public-apis` | Danh mục API public miễn phí theo chủ đề | api, public, free, list |

## Repo tắt trong repos.txt (bỏ `#` nếu cần rồi chạy clone.ps1/clone.sh)

(Hiện không có — toàn bộ repo trong manifest đã bật)

## Ghi chú kỹ thuật

- **openai-cookbook**: upstream có thư mục tên chứa dấu cách cuối (`extracted_invoice_json `) — Windows không checkout được. Đã fix local bằng sparse-checkout loại `examples/data/hotel_invoices/` + `core.protectNTFS=false` (chỉ riêng repo này). Máy mới clone bị lỗi tương tự thì làm lại 2 bước đó rồi `git reset --hard HEAD`.
- **pandas-ta-classic**: thay cho `twopirllc/pandas-ta` gốc (đã bị gỡ khỏi GitHub, tác giả chuyển bản trả phí).
