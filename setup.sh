if [ ! -x "$(command -v wget)" ]
then
	echo "Error, wget is not installed" >&2
	exit 1
fi 

# Back up the pre-installed .bashrc and .vimrc files just in case
mv ~/.vimrc ~/old_vimrc
mv ~/.bashrc ~/old_bashrc

# Use custom .vimrc and .bashrc files instead of the defaults
cp .vimrc ~/.vimrc
cp .bashrc ~/.bashrc

# Install miniconda 3, a python environment manager
if [ ! -f ./Miniconda3-latest-Linux-x86_64.sh ]
then
	wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
fi

bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda

conda init
