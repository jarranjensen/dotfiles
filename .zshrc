# --- 1. COMPLETION SYSTEM ---
# This enables the tab-autocomplete engine you were missing
autoload -Uz compinit
compinit

# Case-insensitive tab completion (typing 'a' matches 'A' and 'a')
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# (Optional) Better menu for tab completion
zstyle ':completion:*' menu select

# --- 2. ALIASES & TOOLS ---
alias ls="eza --icons=always"
alias ll="eza -lag --icons=always"
eval "$(zoxide init zsh)"
alias cd="z"

# --- 3. HISTORY ---
HISTSIZE=5000
SAVEHIST=5000
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY

# --- 4. KEYBINDINGS ---
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

# --- 5. PLUGINS ---
# Note: Syntax highlighting MUST be the very last thing sourced
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# --- 6. WEZTERM ONLY & STOCK MAC PROTECTOR ---
[[ "$TERM_PROGRAM" != "WezTerm" ]] && return

PROMPT='%~ %(?.%F{green}❯%f.%F{red}❯%f) '


# Added by LM Studio CLI (lms)
export PATH="$PATH:$HOME/.lmstudio/bin"
# End of LM Studio CLI section

export PATH="$HOME/.local/bin:$PATH"
