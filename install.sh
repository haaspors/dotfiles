#!/bin/bash

ROOTDIR=$(dirname $0)
[ -z "$DBDIR" ] && DBDIR=$HOME/Dropbox

# Functions

function _create_dir()
{
  [ -d $1 ] || mkdir -p $1 || echo Failed to create $1
}

function _create_symlink()
{
  [ -f $2 ] || ln -s $(realpath $1) $2 || echo Failed to create symlink $1
}

function _dnload()
{
  if [ "$(uname)" == "Darwin" ]; then
    [ -f $2 ] || curl -SLso $2 $1 || echo Failed to create $1
  else
    [ -f $2 ] || wget -O $2 $1 || echo Failed to create $1
  fi
}

function _git_get_repo()
{
  if [ -d $2 ]; then
    pushd $2 && git pull && popd
  else
    git clone $1 $2 || echo Failed to clone $1 to $2
  fi
}

# Start of install script
echo "Installing dotfiles"

echo "Creating symlinks ($ROOTDIR)"
linkables=$( ls -1 -d $ROOTDIR/**/*.symlink )
for file in $linkables ; do
  target="$HOME/.$( basename $file ".symlink" )"
  echo "  creating symlink for $file"
  _create_symlink $file $target
done

# OS X
if [ "$(uname)" == "Darwin" ]; then
  echo "Running on OS X"

  echo "Installing homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

  echo "brew install"
  source $ROOTDIR/osx/brew.sh

  echo "Environment"
  source $ROOTDIR/osx/env.sh
elif [ "$(uname)" == "Linux" ]; then
  echo "Running on Linux"

  _create_dir $HOME/.config/terminator
  _create_symlink $ROOTDIR/terminator.config $HOME/.config/terminator/config

  echo "Environment"
  source $ROOTDIR/linux/env.sh
fi

# zsh
if [[ ! -d "$HOME/.oh-my-zsh" ]]; then
  _git_get_repo git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
fi

# Vim
echo "Setting up Vim"
_create_dir $HOME/.vim/bundle
_create_dir $HOME/.vim/plugin
_create_dir $HOME/.vim/syntax
_create_dir $HOME/.vim/tmp/swap
_create_dir $HOME/.vim/tmp/backup
_create_dir $HOME/.vim/tmp/undo
_create_symlink $ROOTDIR/vim/cscope_maps.vim $HOME/.vim/plugin/cscope_maps.vim
_create_symlink $ROOTDIR/vim/plugins.vim $HOME/.vim/plugins.vim
_git_get_repo git://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle
vim +BundleInstall

# You complete me
pushd $HOME/.vim/bundle/YouCompleteMe
./install.sh --clang-completer
popd

# OpenSSH
_create_dir $HOME/.ssh
echo "Setting up .ssh"
_create_symlink $DBDIR/keys/config $HOME/.ssh/config
gpg-zip -d --tar-args "-C $HOME/.ssh" $DBDIR/keys/keys

echo "Configuring zsh as default shell"
chsh -s $(which zsh)

echo "Done."
