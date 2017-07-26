

# Optional Installs


## Install Homebrew (Mac)

https://brew.sh/

~~~
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update && brew upgrade
~~~


## Install GNU Command Line Tools (Mac)

https://www.topbug.net/blog/2013/04/14/install-and-use-gnu-command-line-tools-in-mac-os-x/

https://apple.stackexchange.com/questions/69223/how-to-replace-mac-os-x-utilities-with-gnu-core-utilities

~~~
brew install coreutils
~~~



## Install R and Python Data Science Stack

~~~
conda install r r-essentials
conda install numpy scipy pandas scikit-learn jupyter matplotlib seaborn sqlalchemy psycopg2 pandasql 
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



## Dropbox (Headless Linux)

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



## Set up browser Markdown preview cabailities (Emacs)

Markdown mode: http://jblevins.org/projects/markdown-mode

Github flavored markdown css: https://gist.github.com/tuzz/3331384#file-github-css

0. Check init_markdown.el for specifics on css for markdown preview in browser 

1. Download and install a browser refresh extension. I've tested these for chrome:

    a. Easy Auto Refresh
    
    b. Super Auto Refresh

2. When writing markdown, initiate live preview mode (within markdown-mode) and set the desired refresh rate in the browser extension.

~~~
C-c C-c l
~~~


