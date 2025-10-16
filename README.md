# Dotfiles

My Mac dotfiles managed by Chezmoi. Hopefully this is a good way to manage this!

How to copy over dotfiles
``` bash
# Install prerequisites
xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install git zsh romkatv/powerlevel10k/powerlevel10k

# Optional but recommended
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Initialize chezmoi and apply your config
chezmoi init git@github.com:pdj1183/dotfiles.git
chezmoi apply

```
