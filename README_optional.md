

### Optional Installs

This file describes some optional installs to orient the basic development environment towards Data Science. This code should be run after the initial Mac or Ubuntu setup and, except where noted, should run fine in either environment.

1. [R and Python for Data Science](#core) 
2. [Octave, Scheme, Pandoc, and Julia](#extra) 
3. [SSH](#ssh) 
4. [Headless Dropbox](#dropbox)
5. [Customizations](#customize)


#### R and Python for Data Science {#core}

```
conda install r r-essentials
conda install numpy scipy pandas scikit-learn jupyter matplotlib seaborn sqlalchemy psycopg2 pandasql 
```


#### Octave, Scheme, Pandoc, and Julia {#extra}

- Octave: <https://www.gnu.org/software/octave/download.html>
- Pandoc: <http://pandoc.org/installing.html>
- Julia: <https://julialang.org/downloads/platform.html>


###### Mac

```
brew install octave
brew install mit-scheme
brew install pandoc
brew cask install julia
```


###### Ubuntu

```
sudo apt-get install octave
sudo apt-get install mit-scheme
sudo apt-get install pandoc
sudo apt-get install julia
```


#### SSH into Remote Instance {#ssh}

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


#### Headless Dropbox (Ubuntu only) {#dropbox}

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


#### Customizations {#customize}

###### Mac

| 1. Install Chrome and Dropbox
| 2. Install a browser refresh extension
|     a. Easy Auto Refresh or Super Auto Refresh
| 3. Set Terminal to a darker theme
