if status is-interactive
    # Commands to run in interactive sessions can go here

    # Disable help greeting
    set fish_greeting

    # Set EDITOR to nvim
    set -gx EDITOR nvim

    # Add other exports
    set -gx ERL_AFLAGS "-kernel shell_history enabled"

    # Add paths
    fish_add_path -m ~/.local/bin
    fish_add_path -m ~/.cargo/bin
    
    # Enable asdf integration
    source /Users/jesse/.asdf/asdf.fish

    alias ls="exa --all --long"
    alias cp="xcp"

    # Enable 1Password plugin
    source /Users/jesse/.config/op/plugins.sh
    
    # Launch the Starship 🚀
    # starship init fish | source

    # POSH 💅
    # oh-my-posh init fish --config ~/.dotfiles/ocean.omp.json | source
    # oh-my-posh init fish --config /opt/homebrew/opt/oh-my-posh/themes/amro.omp.json | source
end
