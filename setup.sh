#!/bin/bash

cd $(dirname "$0")

# finderで隠しファイルを表示する
defaults write com.apple.finder AppleShowAllFiles TRUE
killall Finder

# スクリーンショットを保存するフォルダの変更 
mkdir ~/Pictures/Screenshots
defaults write com.apple.screencapture location ~/Pictures/Screenshots
killall SystemUIServer

# キーボードのリピート速度
defaults write -g InitialKeyRepeat -int 12
defaults write -g KeyRepeat -int 1

# Homebrewのインストール
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# masのインストール
brew install mas

# 諸々のインストール
brew bundle --file=Brewfile --verbose

# 諸々の初期化
anyenv install --init

# vimrc
cp vimrc ~/.vimrc

# oh-my-zshのインストール
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# powerlevel9kのインストール
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# zshrc
# zshrc.sampleからコピペ

# vscodeのconfig
# vscode-settings.jsonからコピペ

# iterm2のconfig
# iterm2.plistをインポート
