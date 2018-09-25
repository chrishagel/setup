

### Ubuntu Setup

This file describes how to set up a basic development environment on a Linux box running Ubuntu 16 LTS. 

1. [Update Apt-Get and Git](#update)
2. [Conda](#conda)
3. [Configure Programs](#configure)
4. [Customizations](#customize)


#### Update Apt-Get and Git <a id='update'></a>

```
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install git
```


#### Conda <a id='conda'></a>

<https://conda.io/docs/install/quick.html#quick-install>

```
cd $HOME
curl -O https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh 

conda update --all
```


#### Configure Programs <a id='configure'></a>

<https://github.com/chrishagel/setup>

Use ln -s instead of cp for symlinks.

```
cd $HOME
git clone https://github.com/chrishagel/setup.git

cp -b setup/dotfiles/.bash_profile .
cp -b setup/dotfiles/.bashrc .
cp -b setup/dotfiles/.zshrc .
cp -b setup/dotfiles/.screenrc .

mv .emacs.d .emacs.d~
cp -r setup/dotfiles/.emacs.d .
```


#### Customizations <a id='customize'></a>

Only one customization should be necessary:

1. Make sure .bash_profile can find conda programs.
```
export PATH="/home/<USER NAME>/miniconda3/bin:$PATH"
```

(And make sure .bashrc does not contain an alias to the Mac emacs gui)
