# dotfiles

My personal terminal and shell configuration files for macOS.

## What's in here

- `.zshrc` — ZSH shell config. Includes tab completion, aliases, zoxide, eza, autosuggestions, syntax highlighting, and a custom prompt.
- `wezterm/wezterm.lua` — WezTerm terminal config. Tokyo Night theme, JetBrains Mono Nerd Font, scrollbar, padding.
- `fastfetch/config.jsonc` — Fastfetch system info display config.

## Setup

These files are managed with symlinks. The real files live here in the repo, and symlinks point to the expected locations on the system.

| File in repo | Symlinked to |
|---|---|
| `.zshrc` | `~/.zshrc` |
| `wezterm/wezterm.lua` | `~/.config/wezterm/wezterm.lua` |
| `fastfetch/config.jsonc` | `~/.config/fastfetch/config.jsonc` |

## Dependencies

### Homebrew

| Package | Purpose |
|---|---|
| `eza` | Better `ls` with icons and color |
| `zoxide` | Smarter `cd` that learns your directories |
| `zsh-autosuggestions` | Ghost text suggestions from history |
| `zsh-syntax-highlighting` | Colors commands as you type |
| `fastfetch` | System info display |
| `wezterm` | Terminal emulator |

```bash
brew install eza zoxide zsh-autosuggestions zsh-syntax-highlighting fastfetch
brew install --cask wezterm
```
