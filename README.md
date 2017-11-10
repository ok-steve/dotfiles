# dotfiles

This file contains information on installing software useful for a variety of programming tasks. It is very opinoinated, but has minimal configuration. This is for development environment, production probably needs more.

It also contains my dotfiles.

Clean install
-------------

1. Download and install [VirtualBox](https://www.virtualbox.org/).
2. Download a virtual machine image (ie. [Lubuntu](http://lubuntu.net/) or [Ubuntu Server](http://www.ubuntu.com/download/server)).
3. Create a new virtual machine, using the configuration options you prefer (generally stick to the defaults).
4. Run virtual machine and install updates: `sudo apt-get update && sudo apt-get upgrade -y`.

### Notes

- To change the computer name after installation, find and replace the name in: `/etc/hostname` and `/etc/hosts`
- If receiving Apport error messages, open `/etc/default/apport` and change `enabled=1` to `enabled=0`, then type `restart apport` in the terminal.

Guest Additions
---------------

1. Install dependencies: `sudo apt-get install module-assistant -y && sudo m-a prepare`.
2. Insert the ISO: `sudo mount /dev/cdrom /media/cdrom`.
3. In the media folder run the install script: `sudo sh VBoxLinuxAdditions.run`.
4. Reboot to activate changes: `sudo reboot`.
5. Unmount the CD.
6. Enable shared folder permissions: `sudo gpasswd -a $USER vboxsf && sudo reboot`.

Browsers and emulators
----------------------

1. Install Chromium: `sudo apt-get install chromium-browser -y`.

### Firefox

- General: Make Firefox the default browser, Show a blank page
- Search: DuckDuckGo
- Privacy
  1. Request that sites not track you
  2. Never remember history
- Advanced
  1. Data Choices: uncheck both options

Version Control & Text Editor
-----------------------------

1. Install Git and Vim: `sudo apt-get install git git-gui vim vim-gnome -y`.
2. Create SSH key to add to remote repositories: `ssh-keygen`,
3. Install [Pathogen](https://github.com/tpope/vim-pathogen): `mkdir -p ~/.vim/autoload ~/.vim/bundle && cd ~/.vim/autoload && wget https://tpo.pe/pathogen.vim`.
4. Copy dotfiles from this repository: `cp .gitconfig .gitignore_global .vimrc ~`.

### Notes

- To change the system default editor: `sudo update-alternatives --config editor`.
- To copy the SSH key to the clipboard: `cat ~/.ssh/id_rsa.pub`.
- To add Pathogen plugins: `git clone {{REPO}} --depth 1 ~/.vim/bundle/{{PROJECT_NAME}}`.
- To commit files that were edited in Windows: `sudo apt-get install dos2unix -y`.

Recommended Vim plugins (also see https://vimawesome.com):

1. https://github.com/editorconfig/editorconfig-vim
2. https://github.com/scrooloose/nerdtree
3. https://github.com/mattn/emmet-vim
4. https://github.com/vim-airline/vim-airline

Docker
------

1. Install curl: `sudo apt-get install curl -y`.
2. Install [Docksal](http://docs.docksal.io/en/master/getting-started/env-setup/): `curl -fsSL get.docksal.io | sh`.

Additional system configuration
-------------------------------

1. Add LXTerminal to Application Launch Bar.
2. Change clock format: `%l:%m %p`.
3. In the Software & Updates change settings download and install security updates automatically, and ignore other updates.
4. `sudo apt-get install bleachbit -y`.

Updating
--------

1. Update system: `sudo apt-get upgrade`.
2. Update Guest Additions by following the installation instructions.
3. Run BleachBit as root if it's installed.
