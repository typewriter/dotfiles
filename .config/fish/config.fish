alias vi=nvim
alias vim=nvim

rbenv init - | source

fish_vi_key_bindings

function fish_mode_prompt 
end

#gitのbranch名出す
function git_branch
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
end

#右prompt
function fish_right_prompt
    echo (git_branch)
end

## cd後にls 
function cd 
    builtin cd $argv; and ls
end

function fish_user_key_bindings
  bind /cf peco_select_history # Ctrl + R
  bind \cx\cr peco_recentd
end

