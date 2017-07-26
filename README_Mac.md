# Install Script for Mac OSX


## Initial Updates and General Config

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


## Configure Programs 

Use 'ln -s' in place of 'cp' to create symlinks.

~~~
cd $HOME
git clone https://github.com/chrishagel/setup.git

mv .bash_profile .bash_profile~
mv .bashrc .bashrc~
mv .zshrc .zshrc~
mv .screenrc .screenrc~
mv .emacs.d .emacs.d~

cp setup/dotfiles/.bash_profile .
cp setup/dotfiles/.bashrc .
cp setup/dotfiles/.zshrc .
cp setup/dotfiles/.screenrc .
cp -r setup/dotfiles/.emacs.d .
~~~

Make sure to uncomment/modify emacs alias in .bashrc

~~~
emacs .bashrc
alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs -nw'
~~~



## Download Conda for Package and Environment Management

https://conda.io/docs/install/quick.html#quick-install

~~~
cd $HOME
curl -O https://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
bash Miniconda3-latest-MacOSX-x86_64.sh
conda update --all
~~~


Check that conda path is added to .bash_profile

~~~
emacs .bash_profile
export PATH="/Users/<USER NAME>/miniconda3/bin:$PATH"
~~~


