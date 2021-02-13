set fish_vi_key_bindings

set -x EDITOR vim
set -x SHELL (which fish)
set -x VISUAL vim

source $HOME/.config/fish/functions/addpaths.fish

addpaths "$HOME/.bin"
addpaths "$HOME/.asdf/bin"
addpaths "$HOME/.asdf/shims"
addpaths ".git/safe/../../bin"
addpaths "/usr/local/sbin"

abbr --add g git
abbr --add v $VISUAL
abbr --add b bundle
abbr --add be bundle exec

# Load any machine local config at config.fish.local
if test -e $HOME/.config/fish/config.fish.local
  source $HOME/.config/fish/config.fish.local
end
# THEME PURE #
set fish_function_path /Users/derrick/.config/fish/functions/theme-pure/functions/ $fish_function_path
source /Users/derrick/.config/fish/functions/theme-pure/conf.d/pure.fish
