

### Mac Setup

This file describes how to set up a basic development environment on a Mac running Sierra. 

1. [XCode Command Line Tools and Git](#xcode)
2. [Homebrew](#homebrew)
3. [Conda](#conda)
4. [GNU Core Utilities](#coreutils)
5. [Configure Programs](#configure)
6. [Emacs](#emacs)
7. [Customizations](#customize)


#### XCode Command Line Tools and Git <a id='xcode'></a>

```
xcode-select -p && which git #check installation
xcode-select --install
```


#### Homebrew {#homebrew}

<https://brew.sh/>

```
cd $HOME
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update && brew upgrade
```


#### Conda {#conda}

<https://conda.io/docs/install/quick.html#quick-install>

```
cd $HOME
curl -O https://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
bash Miniconda3-latest-MacOSX-x86_64.sh 

conda update --all
```


#### GNU Core Utilities {#coreutils}

<https://anaconda.org/bioconda/coreutils>

Also available via homebrew: `brew install coreutils`

```
conda install -c bioconda coreutils
```


#### Configure Programs {#configure}

<https://github.com/chrishagel/setup>

Use ln -s instead of cp for symlinks.

```
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
```


#### Emacs {#emacs}

<https://emacsformacosx.com/>

Download and install gui version from link above, then do the following:

1. Remap Caps Lock to Control

> System Preferences > Keyboard > Modifier Keys... > Caps Lock Key -> ^ Control

2. Use Option as Meta

> Terminal > Preferences... > Keyboard > Check: "Use Option as Meta key"


#### Customizations {#customize}

Only two customizations should be necessary:

1. Make sure .bash_profile can find conda programs.
```
export PATH="/Users/<USER NAME>/miniconda3/bin:$PATH"
```

2. Make sure .bashrc knows to use the gui emacs in Terminal.
```
alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs -nw'
```
