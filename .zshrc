# .zshrc

export LANG=ja_JP.UTF-8

# User specific aliases and functions
alias grep='grep --color=always'
alias less='~/less.sh'
alias ll='ls -al --color'

export LESSCHARSET=utf-8

#
# thx. http://ho-ki-boshi.blogspot.com/2007/12/zsh.html
#
local LEFTC=$'%{\e[1;32m%}' #ターミナル.app 用
local RIGHTC=$'%{\e[1;34m%}' #ターミナル.app 用
#local LEFTC=$'%{\e[38;5;30m%}'
#local RIGHTC=$'%{\e[38;5;88m%}'
local DEFAULTC=$'%{\e[m%}'
PROMPT=$LEFTC"%U$USER@$HOST%%%u "$DEFAULTC
export RPROMPT=$RIGHTC"[%~]"$DEFAULTC
PROMPT2="%_%% "
SPROMPT="%r is correct? [n,y,a,e]: "

# プロンプトのカラー表示を有効
autoload -U colors
colors

# デフォルトの補完機能を有効
autoload -U compinit
compinit

# disable Ctrl+s, Ctrl+q
#setopt not_flow_controll

# ディレクトリ記憶
setopt auto_pushd

# コマンド間違い
setopt correct
# コマンド予測
#autoload predict-on
#predict-on
