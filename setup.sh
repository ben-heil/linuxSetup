if [ ! -x "$(command -v wget)" ]
then
	echo "Error, wget is not installed" >&2
	exit 1
fi 

# Install miniconda 3, a python environment manager
if [ ! -f ./Miniconda3-latest-Linux-x86_64.sh ]
then
	wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
fi

bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda

# Add miniconda to the PATH in your bashrc
echo -e '\nPATH=/home/$USER/miniconda/bin:$PATH' >> ~/.bashrc
