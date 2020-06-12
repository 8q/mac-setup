#!/bin/bash

# 実行前にキーボード設定から
# ctrl+spaceのIMEのショートカット設定を無効化
# スマート引用符・自動変換等無効化
# キーリピートをできるだけ早くに

# 実行前に
# ディスプレイ設定、電源設定、トラックパッド設定

# 実行前に
# git --version # Commaind Line Toolsのインストールが始まるはず

cd $(dirname "$0")

# finderで隠しファイルを表示する
defaults write com.apple.finder AppleShowAllFiles TRUE
killall Finder

# スクリーンショットを保存するフォルダの変更
mkdir ~/Pictures/Screenshots
defaults write com.apple.screencapture location ~/Pictures/Screenshots
killall SystemUIServer

# キーリピート限界突破
defaults write -g InitialKeyRepeat -int 12
defaults write -g KeyRepeat -int 1

# Homebrewのインストール
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# 諸々のインストール
brew bundle --file=Brewfile --verbose

# vimrc
cp .vimrc ~/.vimrc

# oh-my-zshのインストール
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zsh-syntax-hightlightingのインストール
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# p10kのインストール
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

# p10kの設定
# 一度初期設定に従ってフォント等インストールしてから
# .zshrcと.p10k.zshを参考に編集

# iterm2のconfig
# iterm2で設定をエクスポートする設定をしてiterm2を閉じてから
# cp com.googlecode.iterm2.plist ~

# vscodeの設定
# vscode-settings.json参考

# 手動でインストール
# google日本語入力
# Scroll Reverser
# youtube live chat flow
# LINE

# VLCのカスタムスキームが使えるようにしておく
# https://gist.github.com/8q/df50d1b34ca1b70f73390959252fa85e

# 共有フォルダへのログイン
# VPN設定
# 各アプリケーション/ブラウザログイン
# iCloudの共有設定の確認

# 鍵の作成
# ssh-keygen -t rsa -b 4096 -C メールアドレス等
# ssh-add ~/.ssh/id_rsa
# .ssh/configに AddKeysToAgent yes

# git設定
# git config --global user.email メールアドレス
# git config --global user.name 名前
