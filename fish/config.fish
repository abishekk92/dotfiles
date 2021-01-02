set PATH /usr/local/bin $PATH
set PATH ~/.cargo/bin $PATH
set -x LC_ALL en_GB.UTF-8

# Enable vi like motion in fish
fish_vi_key_bindings

alias vim="nvim"
alias ls="lsd"
alias hgrep="history | rg"

begin
    set --local AUTOJUMP_PATH $HOME/.autojump/share/autojump/autojump.fish
    if test -e $AUTOJUMP_PATH
        source $AUTOJUMP_PATH
    end
end

set theme_complete_path "yes"

abbr efish 'vim ~/.config/fish/config.fish'
abbr rfish 'source ~/.config/fish/config.fish'
