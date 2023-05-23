#!/bin/bash

# Get the directory of this script.
SOURCE_DIR=$(dirname $(readlink -f $0))

# Symlink files to home directory.
ln -sv "$SOURCE_DIR/.gitconfig" $HOME
ln -sv "$SOURCE_DIR/.gitignore_global" $HOME
ln -sv "$SOURCE_DIR/.vimrc" $HOME
ln -sv "$SOURCE_DIR/.profile" $HOME