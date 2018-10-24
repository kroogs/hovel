#!/usr/bin/env sh

which doas
if [ ! $? ]; then
  echo "This script requires \`doas\` to install some tools."
  exit 1
fi

doas pkg update
doas pkg upgrade
doas pkg install\
  cmake\
  python36 py36-pip\
  node www/npm\
  tmux\
  fish\
  neovim\
  fzf\
  weechat

which pip
if [ ! $? ]; then
  alias pip="pip-3.6"
fi

install=$HOME/.hovel/install/

. $install/python.sh
. $install/node.sh
. $install/rust.sh
. $install/tmux.sh
. $install/neovim.sh