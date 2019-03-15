# Check that the dependancies you need are installed
if [ -x "$(command -v curl)"]
then
	echo "Error, curl is not installed" >&2
	exit 1
fi 
if [ -x "$(command -v git)"]
then
	echo "Error, git is not installed" >&2
	exit 1
fi

# Install pathogen (a vim plugin manager)

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install syntastic (a vim syntax checking plugin)

cd ~/.vim/bundle && \
	git clone --depth=1 https://github.com/vim-syntastic/syntastic.git

# install flake8 (a python syntax checker used by syntastic)
pip install flake8
