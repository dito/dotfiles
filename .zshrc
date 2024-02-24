bindkey -e

export EDITOR=vim

autoload -Uz compinit && compinit

# export LANG=ja_JP.UTF-8
# export LC_ALL=ja_JP.UTF-8

alias ll='ls -l'

function git_commit_with_arguments_message() {
  git commit --message "$*"
}
alias gm=git_commit_with_arguments_message

setopt no_beep

# history
HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE=~/.zsh_history

setopt hist_ignore_all_dups
setopt hist_save_nodups
setopt share_history

fg() {
  local repo_name="$(ghq list --full-path | while read -r line; do echo "${line/$HOME/~}"; done | fzf-tmux --reverse +m)"
  if [[ -n "$repo_name" ]]; then
    repo_name="${repo_name/'~'/$HOME}"
    cd "$repo_name"
  fi
}

unset zle_bracketed_paste

eval "$(zoxide init zsh)"
