"メモ
"水平分割 :sp
"垂直分割 :vs
"ペイン移動 :ctrl+w 2回

"シンタックスハイライト
syntax on
"行番号を表示
set number
"現在の行のハイライト
set cursorline
"カーソルが何行目の何列目に置かれているかを表示
set ruler
"ウィンドウ幅を超えた行の折り返し
set wrap
"括弧の対応のハイライト
set showmatch
"クリップボード連携(ubuntu)
"set clipboard=unnamedplus
"クリップボード連携(mac)
set clipboard+=unnamed
"インクリメンタルサーチ
set incsearch
"検索結果のハイライト
set hlsearch
"検索が末尾に達したら先頭に戻る
set wrapscan
"ESCキー2度押しでハイライトの切り替え
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>
"バックアップファイルを作らない
set nobackup
"スワップファイルを作らない
set noswapfile
"編集中のファイルが変更されたら自動で読み直す
set autoread
"ビープ音抑制
set vb t_vb=
"タブをスペースにする
set expandtab
"何個のスペースを１つのタブとしてカウントするか
set tabstop=2
"自動インデントの際スペース何個分をインデントとするか
"0のときtabstopの値を使う
set shiftwidth=0
"前の行のインデントを継続
set autoindent
"前の構文を見て次の行のインデントを増減させる
set smartindent
"バックスペースキーの有効化
set backspace=indent,eol,start
"コマンドの補完機能
set wildmenu
"保存するコマンド数
set history=5000
"行末スペースとタブインデントと全角スペースをハイライト
augroup HighlightTrailingSpaces
  autocmd!
  autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=Red ctermbg=Red
  autocmd VimEnter,WinEnter * match TrailingSpaces /\(^\t\+\|\s\+$\|　\)/
augroup END
"ステータスラインにコマンドを表示
set showcmd
"ステータスラインを常に表示
set laststatus=2
"ファイルナンバー表示
set statusline=[%n]
"ホスト名表示
"set statusline+=%{hostname()}@
"ファイル名表示
set statusline+=%F%<
"変更のチェック表示
set statusline+=%m
"読み込み専用かどうか表示
set statusline+=%r
"ヘルプページなら[HELP]と表示
set statusline+=%h
"プレビューウインドウなら[Prevew]と表示
set statusline+=%w
"ここからツールバー右側
set statusline+=%=
"ファイルフォーマット表示
"set statusline+=[format=%{&ff}]
"文字コード表示
set statusline+=[enc=%{has('multi_byte')&&\&fileencoding!=''?&fileencoding:&encoding}]
"ファイルタイプ表示
set statusline+=[type=%Y]
"現在行が全体行の何%か表示
set statusline+=[%p%%]
"ステータスバーの色の定義とフォーカスによって切り替える
augroup ChangeStatusLineColor
  autocmd!
  autocmd VImEnter,WinEnter,ColorScheme * highlight StatusLine term=bold,reverse cterm=bold,reverse gui=bold,reverse ctermfg=green ctermbg=black
  autocmd FocusGained * highlight StatusLine ctermfg=green
  autocmd FocusLost * highlight StatusLine ctermfg=white
augroup END
