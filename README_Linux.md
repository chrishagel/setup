
# Install Script


## Initial Updates and General Config

~~~
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git
~~~


## Configure Programs 

Use 'ln -sb' in place of 'cp -b' to create symlinks. Use 'ln -s' (no '-b') in case of .emacs.d.

~~~
cd $HOME
git clone https://github.com/chrishagel/setup.git

cp -b setup/dotfiles/.bash_profile .
cp -b setup/dotfiles/.bashrc .
cp -b setup/dotfiles/.zshrc .
cp -b setup/dotfiles/.screenrc .

mv .emacs.d .emacs.d~
cp -r setup/dotfiles/.emacs.d .
~~~


## Download Conda for Package and Environment Management

https://conda.io/docs/install/quick.html#quick-install

~~~
cd $HOME
curl -O https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
conda update --all
~~~


Check that conda path is added to .bash_profile

~~~
emacs .bash_profile
export PATH="/home/<USER NAME>/miniconda3/bin:$PATH"
~~~
