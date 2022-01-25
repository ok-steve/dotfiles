# dotfiles

This repo contains my dotfiles as well as instructions on setting up a local development environment.

## Install software

1. Download and install [Docker](https://docks.docker.com/install).
2. Download and install [Git](https://git-scm.com/downloads).
3. Download and install [Vim](https://www.vim.org/download.php).
4. [Download and configure dotfiles](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo).

```
git clone --bare https://github.com/sccherry/dotfiles.git $HOME/.cfg
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME'\nsource $HOME/.aliasrc" >> $HOME/.bashrc
source $HOME/.bashrc
```

### Notes

- If not using Linux you may also need to install [VirtualBox](https://www.virtualbox.org/wiki/Downloads), which comes bundled with the Docker installation.

## Configure version control

1. Create SSH key to add to remote repositories: `ssh-keygen`.

### Notes

- To copy the SSH key to the clipboard: `cat ~/.ssh/id_rsa.pub`.
- To commit files that were edited in Windows: `sudo apt-get install dos2unix -y`.

## Configure text editor

1. Change the system default editor: `sudo update-alternatives --config editor`.

### Notes

- See [Vim Awesome](https://vimawesome.com) for recommended plugins.
