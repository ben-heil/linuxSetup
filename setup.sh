# Check that the dependencies you need are installed
if [ ! -x "$(command -v curl)" ]
then
	echo "Error, curl is not installed" >&2
	exit 1
fi 
if [ ! -x "$(command -v git)" ]
then
	echo "Error, git is not installed" >&2
	exit 1
fi

# Install miniconda 3, a python environment manager
if [ ! -f ./Miniconda3-latest-Linux-x86_64.sh ]
then
	wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
fi

bash Miniconda3-latest-Linux-x86_64.sh -b -p /home/$USER/miniconda

# Add miniconda to the PATH in your bashrc
echo -e '\nPATH=/home/$USER/miniconda/bin:$PATH' >> ~/.bashrc

source ~/.bashrc

# Install pathogen (a vim plugin manager)
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install syntastic (a vim syntax checking plugin)

cd ~/.vim/bundle && \
	git clone --depth=1 https://github.com/vim-syntastic/syntastic.git

# install flake8 (a python syntax checker used by syntastic)
conda install -y flake8
