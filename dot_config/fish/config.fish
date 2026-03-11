if status is-interactive
# Commands to run in interactive sessions can go here
end

# /opt/homebrew/bin/brew shellenv | source

fish_add_path ~/Documents/software
fish_add_path ~/Documents/software/nvim-macos-arm64/bin

set -Ux EDITOR nvim
set -Ux VISUAL nvim

# source "$HOME/.cargo/env.fish"

starship init fish | source

zoxide init fish | source

function y
  set tmp (mktemp -t "yazi-cwd.XXXXXX")
  command yazi $argv --cwd-file="$tmp"
  if read -z cwd < "$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
	  builtin cd -- "$cwd"
  end
  rm -f -- "$tmp"
end

fnm env --use-on-cd --shell fish | source

function n
  nvim $argv
end

function g
  lazygit $argv
end
