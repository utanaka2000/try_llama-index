# jupyterlab_with_vim-docker
## Introductions
This is dockerfile for Jupyterlab with jupyterlab-vim, which is JupyterLab extension.  
Also, additional keybord shortcuts, which is mapping ctrl-j to escape in insert mode, is set.
## Settings
* set `JUPYTER_TOKEN` in `.env` like bellow
```
echo `JUPYTER_TOKEN=FAVOLITE_TOKEN` > .env
```
## Usage
```
docker compose build
docker compose up
```
