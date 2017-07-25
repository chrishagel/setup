
# Install Script


## Initial Updates and General Config

### Mac OSX

**Check that XCode Command Line Tools and Git are installed**

~~~
xcode-select -p
git --version
~~~


If not, install Xcode Command Line Tools, which should auto-install Git:
https://apple.stackexchange.com/questions/102073/does-installing-command-line-tools-for-xcode-also-install-git

~~~
xcode-select --install
~~~


**Download Emacs**

https://emacsformacosx.com/


**Remap Caps Lock to Control**

System Preferences > Keyboard > Modifier Keys... > Caps Lock Key -> ^ Control

**Use Option as Meta**

Terminal > Preferences... > Keyboard > Check: "Use Option as Meta key"

**Set Terminal color scheme to something dark (Homebrew)**



### Linux

~~~
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git
~~~



## Configure Programs 

Use 'ln -sb' in place of 'cp -b' to create symlinks. Use 'ln -s' (no '-b') in case of .emacs.d.

'-b' flag may not work on MacOSX. If not, precede cp/ln commands with:

~~~
cd $HOME
mv .bash_profile .bash_profile~
mv .bashrc .bashrc~
mv .zshrc .zshrc~
mv .screenrc .screenrc~
~~~

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


### Mac OSX

~~~
cd $HOME
curl -O https://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
bash Miniconda3-latest-MacOSX-x86_64.sh 
~~~


Check that conda path is added to .bash_profile

~~~
emacs .bash_profile
export PATH="/Users/<USER NAME>/miniconda3/bin:$PATH"
~~~


Make sure to uncomment/modify emacs alias in .bashrc

~~~
emacs .bashrc
alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs -nw'
~~~


### Linux

~~~
cd $HOME
curl -O https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh 
~~~


Check that conda path is added to .bash_profile

~~~
emacs .bash_profile
export PATH="/home/<USER NAME>/miniconda3/bin:$PATH"
~~~



## Update conda and install python data science stack globally

~~~
which conda
conda update --all
conda install numpy scipy pandas scikit-learn jupyter matplotlib seaborn sqlalchemy psycopg2 pandasql 
~~~



## Set up SSH into remote (AWS) instance

~~~
emacs .ssh/config
~~~

~~~
host <HOST NAME>
     HostName <IP ADDRES>
     User <USER NAME>
     IdentityFile <Absolute path to .pem file>
~~~


Test Connection to AWS

~~~
ssh <HOST NAME>
~~~

