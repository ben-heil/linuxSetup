mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo -e "\nexecute pathogen#infect() \nsyntax on \nfiletype plugin indent on\n" >> ~/.vimrc

cd ~/.vim/bundle && \
	git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
