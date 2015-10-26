# Linux Mint Configuration Instructions

The scripts in this directory set up the necessary packages and plugins on a
clean Linux Mint installation. These scripts were last tested on Linux Mint
17.2.

TODO: Write packages that must be installed beforehand.

## Packages installed with `apt`

The file `packages.txt` contains a list of packages to install from the
Ubuntu/Mint package repository. The `install_packages.sh` script will install
these packages. Even if you are not using a clean install, you can run the
script to get your installation the packages that you should have.

## Packages install from a PPA

The `ppa_install.sh` script contains a list of packages that need to add a PPA
before installation. Currently the packages installed from a PPA are:

* f.lux

## Packages installed via `wget` and `curl`

The `install_cli.sh` script installs packages that download and execute a script
via `wget` or `curl`. Currently these packages are:

* [thefuck](https://www.github.com/nvbn/thefuck)
* [oh-my-zsh](https://www.github.com/robbyrussell/oh-my-zsh)

## Plugins for Oh My ZSH

The `oh_my_zsh_plugins.sh` script installs plugins for Oh My ZSH that are not
available through the original repository. Currently these plugins are:

* zsh-syntax highlighting

## Automated Configuration

The `config.sh` script configures some commands that must be run after
installing the packages and plugins above. Currently the following
configurations are set:

* Git is configured with my name, email, and default push behavior. Because this
  is a public repository, I have set the script to read in the email address.

## Manual Configuration

In addition to installing the packages, there are several other settings to
adjust:

* Under Preferences -> Window Tiling, check the "Maximize, instead of tile, when
  dragging a window to the top edge" box.
* Under Preferences -> Keyboard -> Layouts, click Options. Under "Ctrl key
  position," check the "Caps Lock as Ctrl" box.
* Manually install [Chrome](https://www.google.com/chrome) by downloading and
  running the `.deb` file.
* Manually install [Dropbox](https://www.dropbox.com/install) by downloading and
  running the `.deb` file.
