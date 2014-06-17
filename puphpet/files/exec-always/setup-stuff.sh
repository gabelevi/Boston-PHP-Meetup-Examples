#!/bash/bin
git clone /var/copy_me ~/examples

# Set up vim hack plugin
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo "\nexecute pathogen#infect()"
git clone git://github.com/hhvm/vim-hack.git ~/.vim/bundle/vim-hack
