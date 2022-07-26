# Mac Setup
## Enable fingerprint authentication in terminal
Follow [this guide](https://dev.to/equiman/how-to-use-macos-s-touch-id-on-terminal-5fhg).

## Install Rosetta
```bash
softwareupdate --install-rosetta --agree-to-license
``` 

## Install Homebrew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Setup shell
```bash
# Install Zsh, Starship.
brew install zsh starship

# Install oh-my-zsh.
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install autosuggestions plugin.
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install syntax-highlighting plugin.
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Copy synched .zshrc.
cp .zshrc ~/.zshrc
```

## Setup Git
```bash
# Install latest git version using brew.
brew install git

# Copy git configuration.
cp .gitconfig ~/.gitconfig
```

## Setup Java 11.
```bash
brew install openjdk@11
```

## Setup Python.
```bash
# Install PyEnv
brew install pyenv
echo '\n# Initialize PyEnv.\neval $(pyenv init --path)' >> ~/.zprofile
export GLOBAL_PYTHON_VERSION="3.9.13"

# Install global python version.
pyenv install $GLOBAL_PYTHON_VERSION
pyenv global $GLOBAL_PYTHON_VERSION

# Install poerty.
brew install poetry
```

## Setup NodeJs.
```bash
# Install NVM.
brew install nvm
mkdir ~/.nvm

# Install and use global node version (lts).
nvm install --lts
nvm use --lts
```

## Install Useful Brew Forumlas.
```bash
# Install thefuck command.
brew intall \
    thefuck \
    tldr
```

## Install FiraCode font
```bash
brew tap homebrew/cask-fonts
brew install --cask font-fira-code
```

# Configure iterm2.
- Launch iTerm
- press `cmd+,` 
- Go to profiles.
- Other actions => import profiles from JSON.
- Select `./iterms2/idan.json`
- Right click on `Idan` => set as default.

## Install Desktop Apps
```bash
# Install automatically using cask.
brew install --cask \
    google-chrome \
    docker \
    microsoft-office \
    visual-studio-code \
    font-fira-code \
    whatsapp \
    iterm2 \
    parallels parallels-toolbox \
    zoom \
    jetbrains-toolbox \
    messenger \
    telegram
```

## Setup Windows 11 in Parallels
Start Parallels and follow instructions.
