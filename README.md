# Yoyo's dotfile collection

# Todo
- [ ] Automation Tools install
  - [ ] 
- [ ] Ubuntu (18.04)
  - [ ] 
- [ ] Mac
  - [x] tmux
  - [ ] vim
  - [ ] .gitconfig
  - [ ] .npmrc
  - [x] .hyper.js
  - [ ] 

# CLI Tools
* [bat](https://github.com/sharkdp/bat)
  * Mac: `brew install bat`
  * Ubuntu  
    1. `curl -sL https://api.github.com/repos/sharkdp/bat/releases/latest | jq -r '.assets[].browser_download_url' | fgrep musl |grep amd64.deb | xargs curl -L -o bat.deb`
    2. `sudo dpkg -i bat.deb`
* [fd]()
  * Ubuntu: 
    1. `curl -sL https://api.github.com/repos/sharkdp/fd/releases/latest | jq -r '.assets[].browser_download_url' | fgrep musl |grep amd64.deb | xargs curl -L -o fd.deb`
    2. `sudo dpkg -i fd.deb`
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
  * `sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
* [powerlevel10k](https://github.com/romkatv/powerlevel10k)
  * `git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k`
* [jq](https://stedolan.github.io/jq/download/)
  * Ubuntu: `sudo apt install jq`
  * Mac: `brew install jq`
* [fzf](https://github.com/junegunn/fzf)
  * Mac: `brew install fzf`
  * Ubuntu: TODO
* [htop]
  * Mac: `brew install htop`
  * Ubuntu: `apt install htop`
* [screenfetch](https://github.com/KittyKatt/screenFetch)
  * Mac: `brew install screenfetch`
* [tig](https://github.com/jonas/tig)
  * Mac: `brew install tig`
  * 
* 


# GUI tools or resources
* [Nerd font](https://github.com/ryanoasis/nerd-fonts)
  * I like `DejaVu Sans Mono`.
  * Mac: 
    1. `brew tap homebrew/cask-fonts`
    2. `brew cask install font-dejavusansmono-nerd-font-mono`
  * Ubuntu: TODO
* 