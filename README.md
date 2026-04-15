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

Install via Homebrew:

```bash
brew install eza zoxide zsh-autosuggestions zsh-syntax-highlighting fastfetch
```

Install WezTerm:

```bash
brew install --cask wezterm
```
