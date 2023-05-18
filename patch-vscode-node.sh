#! /bin/sh
# fix-vscode-server-node.sh
# https://github.com/microsoft/vscode-remote-release/issues/648#issuecomment-503148523
cd ~/.vscode-server/bin/*
if ! ./node -e "require('process').exit(0)"
then
  echo patching node binary $(readlink -f node)
  rm node
  ln -s $(which node)
else
  echo node is working $(readlink -f node)
fi
