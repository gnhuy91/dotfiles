set fish_complete_path /usr/local/share/fish/completions $fish_complete_path

# exa is a replacement for ls: https://the.exa.website/
if type exa > /dev/null
  alias ls "exa"
  alias ll "exa --long --git"
  alias lt "exa --long --tree"
  alias grep "grep --color=auto"
end

set -x EDITOR vim
set -x DOTFILES $HOME/.dotfiles
set -x GOPATH $HOME

set PATH /usr/local/opt/go/libexec/bin $HOME/bin /usr/local/bin $PATH

# iterm2 stuff
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# docker env
eval (docker-machine env dev)

# omf bobthefish theme
set -g theme_nerd_fonts yes
set -g theme_title_display_process yes
set -g theme_show_exit_status yes
set -g theme_display_docker_machine no
set -g theme_display_vagrant yes
set -g theme_display_date yes
set -g theme_date_format "+%H:%M:%S"
set -g theme_avoid_ambiguous_glyphs yes

# bobthefish custom color scheme
# Based on "solarized", but "color_repo" based on "terminal-dark".
set -g theme_color_scheme user

# # "solarized" theme
# # Everything except "color_repo"
# set -l base03  002b36
# set -l base02  073642
# set -l base01  586e75
# set -l base00  657b83
# set -l base0   839496
# set -l base1   93a1a1
# set -l base2   eee8d5
# set -l base3   fdf6e3
# set -l yellow  b58900
# set -l orange  cb4b16
# set -l red     dc322f
# set -l magenta d33682
# set -l violet  6c71c4
# set -l blue    268bd2
# set -l cyan    2aa198
# set -l green   859900

# set colorfg $base3

# set __color_initial_segment_exit     $base2 $red --bold
# set __color_initial_segment_su       $base2 $green --bold
# set __color_initial_segment_jobs     $base2 $blue --bold

# set __color_path                     $base02 $base0
# set __color_path_basename            $base02 $base1 --bold
# set __color_path_nowrite             $base02 $orange
# set __color_path_nowrite_basename    $base02 $orange --bold

# set __color_vi_mode_default          $blue $colorfg --bold
# set __color_vi_mode_insert           $green $colorfg --bold
# set __color_vi_mode_visual           $yellow $colorfg --bold

# set __color_vagrant                  $violet $colorfg --bold
# set __color_username                 $base02 $blue
# set __color_rvm                      $red $colorfg --bold
# set __color_virtualfish              $cyan $colorfg --bold

# # "terminal-dark" theme
# # "color_repo" only
# set colorfg black
# set __color_repo                     green $colorfg
# set __color_repo_work_tree           green $colorfg --bold
# set __color_repo_dirty               brred $colorfg
# set __color_repo_staged              yellow $colorfg

# "solarized-light" theme
set -l base03  002b36
set -l base02  073642
set -l base01  586e75
set -l base00  657b83
set -l base0   839496
set -l base1   93a1a1
set -l base2   eee8d5
set -l base3   fdf6e3
set -l yellow  b58900
set -l orange  cb4b16
set -l red     dc322f
set -l magenta d33682
set -l violet  6c71c4
set -l blue    268bd2
set -l cyan    2aa198
set -l green   859900

set colorfg $base03

set __color_initial_segment_exit     $base02 $red --bold
set __color_initial_segment_su       $base02 $green --bold
set __color_initial_segment_jobs     $base02 $blue --bold

set __color_path                     $base2 $base00
set __color_path_basename            $base2 $base01 --bold
set __color_path_nowrite             $base2 $orange
set __color_path_nowrite_basename    $base2 $orange --bold

set __color_vi_mode_default          $blue $colorfg --bold
set __color_vi_mode_insert           $green $colorfg --bold
set __color_vi_mode_visual           $yellow $colorfg --bold

set __color_vagrant                  $violet $colorfg --bold
set __color_username                 $base2 $blue
set __color_rvm                      $red $colorfg --bold
set __color_virtualfish              $cyan $colorfg --bold

# "terminal-dark" theme
# "color_repo" only
set colorfg black
set __color_repo                     green $colorfg
set __color_repo_work_tree           green $colorfg --bold
set __color_repo_dirty               brred $colorfg
set __color_repo_staged              yellow $colorfg
