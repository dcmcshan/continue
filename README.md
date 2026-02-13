# Continue + OpenRouter (Qwen3 Coder Agent) Demo

This repo demonstrates using the **Continue** extension in **VS Code** with **OpenRouter** and the **Qwen3 Coder Agent** model.

## Prerequisites

- [VS Code](https://code.visualstudio.com/)
- An [OpenRouter](https://openrouter.ai/) account and API key

## Setup

### 1. Install the Continue extension

- Open VS Code and go to **Extensions** (`Ctrl+Shift+X` / `Cmd+Shift+X`).
- Search for **Continue** and install **[Continue](https://marketplace.visualstudio.com/items?itemName=Continue.continue)**.
- Or install from the command line:

  ```bash
  code --install-extension Continue.continue
  ```

### 2. Get your OpenRouter API key

1. Go to [OpenRouter Keys](https://openrouter.ai/keys).
2. Sign in or create an account.
3. Create an API key and copy it (it starts with `sk-or-`).

### 3. Configure Continue to use OpenRouter

This repo includes a preconfigured `.continue/config.json` that points to OpenRouter and the Qwen3 Coder Agent model.

**Add your API key** using one of these options:

**Option A – Environment variable (recommended)**

Set your key so Continue can read it:

```bash
export OPENROUTER_API_KEY="sk-or-v1-your-key-here"
```

Then in `.continue/config.json`, ensure the model entries use an empty `apiKey` so Continue falls back to the environment variable, or set:

```json
"apiKey": "${OPENROUTER_API_KEY}"
```

**Option B – Continue UI**

1. Open the Continue sidebar (click the Continue icon or use the command palette: **Continue: Open Continue**).
2. Click the **Settings** (gear) icon.
3. Under **Models**, select the **Qwen3 Coder Agent** model and paste your OpenRouter API key where prompted.

**Option C – In config (avoid committing keys)**

Edit `.continue/config.json` and set `apiKey` to your key. Add `.continue/config.json` to `.gitignore` if it might contain secrets, or use a local override.

### 4. Model ID

The config uses the OpenRouter model id:

- **`qwen/qwen3-coder-agent`** – Qwen3 Coder Agent

If that id is not available in your region or OpenRouter changes it, try:

- **`qwen/qwen3-coder-next`** – Qwen3 Coder Next (coding-focused alternative)

Update the `model` field in `.continue/config.json` if you switch.

## Usage

1. Open this folder in VS Code: `File → Open Folder` → select this repo.
2. When prompted, install the recommended **Continue** extension if you haven’t already.
3. Open the Continue panel and start a chat, or use **Ctrl+L** / **Cmd+L** to open the inline chat.
4. Ask for code edits, explanations, or refactors; Continue will use Qwen3 Coder Agent via OpenRouter.

## Project structure

- **`.continue/config.json`** – Continue model config (OpenRouter + Qwen3 Coder Agent).
- **`.vscode/extensions.json`** – Recommends the Continue extension for this workspace.
- **`src/`** – Sample code you can use to try chat, autocomplete, and edits.

## Links

- [Continue](https://continue.dev/)
- [Continue on VS Code Marketplace](https://marketplace.visualstudio.com/items?itemName=Continue.continue)
- [OpenRouter](https://openrouter.ai/)
- [OpenRouter Models](https://openrouter.ai/models)
