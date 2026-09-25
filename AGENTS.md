# OpenChat

## Stack

* **web:** Next.js 16, React 19, TypeScript, Tailwind CSS 4, shadcn/ui
* **api:** FastAPI, Python 3.13, uv, Ruff, pytest
* **Local AI:** Ollama at `http://localhost:11434`, default model `qwen3.5:2b`
* **Cloud AI fallback:** OpenAI, Anthropic, Gemini
* **web:** `web/`
* **api:** `api/`

## Commands

### web

```powershell
cd web
npm install
npm run dev
```

Port: `3000`

### api

```powershell
cd api
uv sync
uv run fastapi dev
```

Port: `8000`

Add api package:

```powershell
uv add <package>
```

Add web package:

```powershell
npm install <package>
```

Run tests:

```powershell
cd api
pytest
```

## Rules

* **Inspect existing code before changing it.**
* Follow existing project patterns; avoid unnecessary rewrites.
* Keep web, api, and AI-provider logic separated.
* Use Ollama as the default AI provider and cloud APIs as fallback when configured.
* Never hard-code API keys or secrets.
* Never commit `.env` files or credentials.
* Validate user input and handle AI/API errors safely.
* Use TypeScript types and Python type hints.
* Add/update tests for meaningful changes.
* Run relevant tests, linting, and type checks after changes.
* Do not claim tests passed unless you actually ran them.
* Keep changes focused and remove debugging code before finishing.

## Deep Search / Investigation

Before implementing complex changes:

```text
Find → Read → Understand → Change → Test
```

Check relevant source files, tests, configuration, dependencies, and existing patterns before making assumptions.

## Definition of Done

* Requested feature works.
* Existing functionality is not unnecessarily broken.
* Relevant tests/checks pass.
* No secrets are exposed.
* No unnecessary dependencies or unrelated changes are introduced.
* Best of Luck