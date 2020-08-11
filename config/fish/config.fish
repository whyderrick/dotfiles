set fish_vi_key_bindings

set -x EDITOR vim
set -x SHELL (which fish)
set -x VISUAL vim

source $HOME/.config/fish/functions/addpaths.fish

addpaths fish_user_paths "$HOME/.bin" $fish_user_paths
addpaths fish_user_paths "$HOME/.asdf/bin" $fish_user_paths
addpaths fish_user_paths "$HOME/.asdf/shims" $fish_user_paths
addpaths fish_user_paths ".git/safe/../../bin" $fish_user_paths
addpaths fish_user_paths "/usr/local/sbin" $fish_user_paths

abbr --add g git
abbr --add v $VISUAL
abbr --add b bundle
abbr --add be bundle exec

# Load any machine local config at config.fish.local
if test -e $HOME/.config/fish/config.fish.local
  source $HOME/.config/fish/config.fish.local
end
