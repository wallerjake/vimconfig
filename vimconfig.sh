#! /bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# backup existing setup
cp ~/.vimrc ~/.vimrc_$(date +%Y%m%d).bak
if [ -d ~/.vim/bundle ]; then
  echo "Moving bundle to bundle_$(date +%Y%m%d)"
  mv ~/.vim/bundle ~/.vim/bundle_$(date +%Y%m%d)
  echo "Making new bundle directory"
  mkdir -p ~/.vim/bundle 
else
  echo "Making new bundle directory"
  mkdir -p ~/.vim/bundle
fi

# copy in the new setup
cp .vimrc ~/.vimrc

# install the bundles
echo "Cloning in Nerd Commenter (https://github.com/scrooloose/nerdcommenter)"
cd ~/.vim/bundle && git clone https://github.com/scrooloose/nerdcommenter.git

echo "Cloning in Nerd Tree (https://github.com/scrooloose/nerdtree)"
cd ~/.vim/bundle && git clone https://github.com/scrooloose/nerdtree.git

echo "Cloning in Super Tab (https://github.com/ervandew/supertab)"
cd ~/.vim/bundle && git clone https://github.com/ervandew/supertab.git

echo "Cloning in Vim Airline (https://github.com/bling/vim-airline)"
cd ~/.vim/bundle && git clone https://github.com/bling/vim-airline.git

echo "Cloning in Vim Autoformat (https://github.com/Chiel92/vim-autoformat)"
cd ~/.vim/bundle && git clone https://github.com/Chiel92/vim-autoformat.git

echo "Installing Ruby Beutify (https://github.com/erniebrodeur/ruby-beautify) depency for autoformat"
# dependency of autoformat
gem install ruby-beautify
cd $DIR && cp .ruby-beautify ~/.ruby-beutify

echo "Cloning in Vim Bundler (https://github.com/tpope/vim-bundler)"
cd ~/.vim/bundle && git clone https://github.com/tpope/vim-bundler.git

echo "Cloning in Vim Endwise (https://github.com/tpope/vim-endwise)"
cd ~/.vim/bundle && git clone https://github.com/tpope/vim-endwise.git

echo "Cloning in Vim Fugitive (https://github.com/tpope/vim-fugitive)"
cd ~/.vim/bundle && git clone https://github.com/tpope/vim-fugitive.git

echo "Cloning in Vim Indent Guides (https://github.com/nathanaelkane/vim-indent-guides)"
cd ~/.vim/bundle && git clone https://github.com/nathanaelkane/vim-indent-guides.git

echo "Cloning in Vim Rails (https://github.com/tpope/vim-rails)"
cd ~/.vim/bundle && git clone https://github.com/tpope/vim-rails.git

echo "Cloning in Vim Rubocop (https://github.com/ngmy/vim-rubocop)"
cd ~/.vim/bundle && git clone https://github.com/ngmy/vim-rubocop.git

echo "Cloning in Vim Ruby (https://github.com/vim-ruby/vim-ruby)"
cd ~/.vim/bundle && git clone https://github.com/vim-ruby/vim-ruby.git

echo "Cloning in Vim Surround (https://github.com/tpope/vim-surround)"
cd ~/.vim/bundle && git clone https://github.com/tpope/vim-surround.git
