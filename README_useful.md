# Some Useful Commands


## Reattach to a screen session that was interupted and is still attached

~~~
screen -ls
screen -r -d <PID> 
~~~



## Elpy hangs Emacs

~~~
ps -ef | grep python
kill <PID> # of elpy process
~~~



## Activate environment when using Emacs for development

https://github.com/jorgenschaefer/elpy/issues/285

In scratch frame

C-x C-e with cursor to right of final paren

~~~
(pyvenv-activate (expand-file-name "~/Miniconda3/envs/<env_name>"))
~~~




