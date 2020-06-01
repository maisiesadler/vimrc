#!/bin/bash
echo "Installing vimrc..."
DIR=`dirname $0`
echo $PWD
mv ~/.vimrc ~/.vimrc_old
#ln -s ${DIR}/.vimrc ~/.vimrc
ln -s ${PWD}/.vimrc ~/.vimrc
echo "Done"
