set PATH /usr/local/bin $PATH
set PATH ~/.cargo/bin $PATH
set -x LC_ALL en_GB.UTF-8

# Enable vi like motion in fish
fish_vi_key_bindings

mcfly init fish | source
zoxide init fish | source

alias att='alacritty-themes'
alias vim="nvim"
alias cat="bat"
alias ls="lsd"
alias python="python3"
alias hgrep="history | rg"


set theme_complete_path "yes"

abbr efish 'vim ~/.config/fish/config.fish'
abbr evim 'vim ~/.config/nvim/init.vim'
abbr rfish 'source ~/.config/fish/config.fish'
abbr cb 'cargo build'
abbr cr 'cargo run'
abbr ct 'cargo test'
abbr cc 'cargo check'
abbr crr 'cargo run --'
