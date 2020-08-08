set fish_vi_key_bindings

set -x EDITOR vim
set -x SHELL (which fish)
set -x VISUAL vim

set -U fish_user_paths "$HOME/.bin" $fish_user_paths
set -U fish_user_paths "$HOME/.asdf/bin" $fish_user_paths
set -U fish_user_paths "$HOME/.asdf/shims" $fish_user_paths
set -U fish_user_paths ".git/safe/../../bin" $fish_user_paths
set -U fish_user_paths "/usr/local/sbin" $fish_user_paths

abbr --add g git
abbr --add v $VISUAL
abbr --add b bundle
abbr --add be bundle exec
# THEME PURE #
set fish_function_path /Users/derrickcarr/.config/fish/functions/theme-pure/functions/ $fish_function_path
source /Users/derrickcarr/.config/fish/functions/theme-pure/conf.d/pure.fish
