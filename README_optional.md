

# Optional Installs


## Install Homebrew (Mac)

https://brew.sh/

~~~
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update && brew upgrade
~~~



## Install R

~~~
conda install r r-essentials
~~~



## Install Octave, Mit-Scheme, Pandoc, and Julia

Octave intructions: https://www.gnu.org/software/octave/download.html
Pandoc instructions: http://pandoc.org/installing.html
Julia instructions: https://julialang.org/downloads/platform.html

### Mac OSX

~~~
brew install octave
brew install mit-scheme
brew install pandoc
brew cask install julia
~~~


### Linux

~~~
sudo apt-get install octave
sudo apt-get install mit-scheme
sudo apt-get install pandoc
sudo apt-get install julia
~~~



## Dropbox (Headless, Linux)

https://www.dropbox.com/install-linux

~~~
cd $HOME
wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
$HOME/.dropbox-dist/dropboxd
~~~

After final command, will get a message that you need to visit a link in a browser to register computer with your dropbox account. Do this and you should be all set (ok to do this in local computer's browser even if setting up Dropbox on remote (AWS) machine).

Each time log in need to start Dropbox as a background process using:

~~~
$HOME/.dropbox-dist/dropboxd &
~~~
