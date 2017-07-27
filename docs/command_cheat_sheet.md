
### Command Cheat Sheets

1. [Bash](#bash)
2. [Emacs](#emacs)
3. [Python in Emacs](#python)
4. [Screen](#screen)
5. [Remote AWS Connection](#aws)


#### Bash <a id='bash'></a>

Action | Keys
-------|-----
Restart bash | . ~/.bashrc
Change directory | cd **directory name**
Go to Home directory | cd $HOME
List all files and directories | la
Access remote server | ssh **host name**
Create file | touch **file name**
Go up one directory | ..
Find data path to item | which **item**
Start emacs | emacs
New directory | mkdir **new directory name**


#### Emacs <a id='emacs'></a>

Action | Keys
-------|------
Save | **C-x s**
Close | **C-x c**
Find file | **C-x C-f**
Create new file | **C-x C-f** (x2)
Kill buffer (closes current file) | **C-x k**
  

#### Python in Emacs <a id='python'></a>

Action | Keys
-------|-----
Revert window to single buffer | **C-x 1**
Splits window to a double buffer (horizontal) | **C-x 2**
Splits window to a double buffer (vertical) | **C-x 3**
Rotates cursor between buffers | **C-x o**
Move cursor to beginning of line | **C-a**
Move cursor to end of line | **C-e**
Set/unset mark | **C-space**
Rotate the buffer | **C-x <-/->** 
Run highlighted code | **C-c C-c**


#### Screen <a id='screen'></a>

Action | Keys
-------|-----
Open Screen | screen
List current open sockets | screen -ls
Reattach to a screen session | screen -r
Cycle through terminal windows | **C-t n**
New terminal window | **C-t c**
Kill terminal window | **C-t k**
Detach from screen | **C-t d**


#### Remote AWS Connection <a id='aws'></a>

Action | Keys 
-------|------
Exit server without turning off connection | exit
Terminate connection | sudo init 0
