alias vi=nvim
alias vim=nvim

rbenv init - | source

fish_vi_key_bindings

function cd
    builtin cd $argv; and ls
end

function pecovi
  peco | awk -F: '{printf $1}' | read selected
  if [ $selected ]
    vim $selected
  end
end

function glsvi
  git ls-files | peco --query "$LBUFFER" | read selected
  if [ $selected ]
    vim $selected
  end
end

function fish_user_key_bindings
  bind -M insert \cr 'peco_select_history (commandline -b)'
  # bind \c] peco_select_ghq_repository
  bind -M insert \cg glsvi
end

set -g theme_show_exit_status no
set -g theme_display_date no
set -g theme_display_cmd_duration no
set -g theme_project_dir_length 80
set -g theme_color_scheme dracula

set EDITOR nvim
direnv hook fish | source


