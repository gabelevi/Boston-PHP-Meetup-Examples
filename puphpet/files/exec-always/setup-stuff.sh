#!/bin/bash
rm -rf ~vagrant/examples
git clone /var/copy_me ~vagrant/examples
chown -R vagrant:vagrant ~vagrant/examples

# Install pathogen (need for the hack plugin)
mkdir -p ~vagrant/.vim/autoload ~vagrant/.vim/bundle && curl -LSso ~vagrant/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo -e "\nexecute pathogen#infect()\n" >> ~vagrant/.vimrc

# Set up vim hack plugin
rm -rf ~vagrant/.vim/bundle/vim-hack
git clone git://github.com/hhvm/vim-hack.git ~vagrant/.vim/bundle/vim-hack
chown -R vagrant:vagrant ~vagrant/.vim
