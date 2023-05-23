# dotfiles

This repo contains my dotfiles as well as instructions on setting up a local development environment.

## Install software

1. Download and install [Docker](https://docks.docker.com/install).
2. Download and install [Git](https://git-scm.com/downloads).
3. Download and install [Vim](https://www.vim.org/download.php).
4. Clone the repository and run `install.sh`.
5. If necessary, `echo "source $HOME/.profile" >> $HOME/.bashrc && source $HOME/.bashrc`, for whichever shell needs it (ie. `.zshrc`).

## Commands

- Create SSH key to add to remote repositories: `ssh-keygen`
- Copy the SSH key to the clipboard: `cat ~/.ssh/id_rsa.pub`
- Commit files that were edited in Windows: `sudo apt-get install dos2unix -y`
- Change the system default editor: `sudo update-alternatives --config editor`.

### References

- [Vim Awesome](https://vimawesome.com) for recommended plugins.
- [Dotfiles: Best Way to Store in a Bare Git Repository](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo).