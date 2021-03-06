

### Data Science Environment

This file describes some optional installs to orient the basic development environment towards Data Science. This code should be run after the initial Mac or Ubuntu setup and, except where noted, should run fine in either environment.

1. [R and Python for Data Science](#core) 
2. [Octave, Scheme, Julia, Pandoc, and LaTeX](#extra) 
3. [SSH](#ssh) 
4. [Headless Dropbox](#dropbox)
5. [Customizations](#customize)


#### R and Python for Data Science <a id='core'></a>

```
conda install r r-essentials
conda install numpy scipy pandas scikit-learn jupyter matplotlib seaborn sqlalchemy psycopg2 pandasql 
```


#### Octave, Scheme, Julia, Pandoc, and LaTeX <a id='extra'></a>

- Octave: <https://www.gnu.org/software/octave/download.html>
- Julia: <https://julialang.org/downloads/platform.html>
- Pandoc: <http://pandoc.org/installing.html>
- TeXLive/MacTeX: <https://www.tug.org/texlive/>


###### Mac

```
brew install octave
brew install mit-scheme
brew cask install julia
brew install pandoc
breaw cask install mactex
```


###### Ubuntu

```
sudo apt-get install octave
sudo apt-get install mit-scheme
sudo apt-get install julia
sudo apt-get install pandoc
sudo apt-get install texlive
```


#### SSH into Remote Instance <a id='ssh'></a>

```
cd $HOME
emacs .ssh/config
```

```
host <HOST NAME>
    HostName <IP ADDRES>
    User <USER NAME>
    IdentityFile <ABSOLUTE PATH TO .pem FILE>
```

```
ssh <HOST NAME>
```


#### Headless Dropbox (Ubuntu only) <a id='dropbox'></a>

<https://www.dropbox.com/install-linux>

After final command, will get a message that you need to visit a link in a browser to register computer with your dropbox account. Do this and you should be all set (ok to do this in local computer's browser even if setting up Dropbox on remote machine).

```
cd $HOME
wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
$HOME/.dropbox-dist/dropboxd
```

Each time log in need to start Dropbox as a background process using:

```
$HOME/.dropbox-dist/dropboxd &
```


#### Customizations <a id='customize'></a>

###### Pandoc
1. Place custom LaTeX templates in $HOME/.pandoc/templates/
2. Use them with the --template=<TEMPLATE_NAME> flag


###### Mac

1. Install Chrome and Dropbox
2. Install a browser refresh extension for previewing Markdown (Easy Auto Refresh, Super Auto Refresh, etc)
3. Set Terminal to a darker theme
