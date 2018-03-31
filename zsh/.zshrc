# vi mode
bindkey -v

function zle-line-init zle-keymap-select {
    git_custom_status=""
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]% %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $git_custom_status $EPS1"
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

# lower ESC timeout
export KEYTIMEOUT=1
