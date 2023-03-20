# Mac Setup
## Enable fingerprint authentication in terminal
```bash
sudo sed -i.old '2s;^;auth sufficient pam_tid.so\n;' /etc/pam.d/sudo
```

## Install Rosetta
```bash
softwareupdate --install-rosetta --agree-to-license
``` 

## Install Homebrew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Setup Git
```bash
# Install latest git version using brew.
brew install git

# Copy git configuration.
cp .gitconfig ~/.gitconfig
```

## Setup ZShell
```bash
# Install Zsh, Starship.
brew install zsh starship

# Install oh-my-zsh.
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install autosuggestions plugin.
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install syntax-highlighting plugin.
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Copy synched .zshrc and .zprofile.
cp .zshrc .zprofile ~

# Edit configuration to your liking.
vim ~/.zshrc
```

## Setup iTerm2
### Install iTerm2
```bash
brew install --cask iterm2
```

### Install FiraCode font
```bash
brew tap homebrew/cask-fonts
brew install --cask font-fira-code
```

### Enable Fingerprint for Sudo
- Launch iTerm.
- press `cmd+,`.
- Go to advanced.
- Search for "allow session".
- Set `Allow sessions to survive logging out and back in` to `no`.

### Load Profile
- Launch iTerm.
- press `cmd+,`. 
- Go to profiles.
- Other actions => import profiles from JSON.
- Select `./iterms2/idan.json`.
- Right click on `Idan` and `set as default`.

## Setup Java.
```bash
# Install JEnv.
brew install jenv 

# Auto-export JAVA_HOME.
jenv enable-plugin export

# Install desired Java versions.
brew install \
    openjdk@11 \
    openjdk@17

# Register Java versions with JEnv.
jenv add $(brew --prefix openjdk@11)
jenv add $(brew --prefix openjdk@17)
```

## Setup .Net
```bash
brew install --cask dotnet-sdk
```

## Setup Python.
```bash
# Install PyEnv
brew install pyenv

# Install global python version.
export GLOBAL_PYTHON_VERSION="3.9.13"
pyenv install $GLOBAL_PYTHON_VERSION
pyenv global $GLOBAL_PYTHON_VERSION

# Install poerty.
curl -sSL https://install.python-poetry.org | python3 - --version=1.2.1

# Enable poetry auto-completion in terminal.
mkdir $ZSH_CUSTOM/plugins/poetry
poetry completions zsh > $ZSH_CUSTOM/plugins/poetry/_poetry
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
# Add brew taps
brew tap \
    teamookla/speedtest

# Update local brew database.
brew update

# Install brew formulas.
brew intall \
    tmux \
    jq \
    sqlite \
    thefuck \
    tldr \
    speedtest \
    q \
    awscli \
    eksctl \
    bat \
    dive \
    k9s \
    go
```

## Setup VIM
```bash
cp .vimrc ~/.vimrc
```

## Install Desktop Apps
```bash
# Update local brew database.
brew update

# Install automatically using cask.
brew install --cask \
    google-chrome \
    microsoft-teams \
    docker \
    microsoft-office \
    visual-studio-code \
    font-fira-code \
    whatsapp \
    zoom \
    jetbrains-toolbox \
    messenger \
    telegram \
    numi \
    steam \
    vlc \
    lens \
    postman \
    anydesk \
    warp \
    franz
```

## Install JetBrains Products
- Install the jetbrains toolbox with brew as demonstrated above.
- Launch the toolbox and install desired tools.

## Install Paste
Install the application through AppStore.
