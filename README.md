# SwanLotus Website

This repository contains the source code and content for the [SwanLotus](http://swanlotus.org) website.

The website uses the [Pelican](https://blog.getpelican.com/) static site generator.

## Getting Started

Follow the steps below to set up your development environment:

1. Install [Pandoc](https://pandoc.org/MANUAL.html) and [Git](https://git-scm.com/).

    ```bash
    sudo pacman -Syyu
    sudo pacman -S git pandoc
    ```

1. Clone the `swanlotus` repository.

    ```bash
    git clone https://github.com/kleinbottle/swanlotus <directory-name>
    ```

    You will be asked to enter your username and password to clone the repository.

1. Change into the directory you have cloned swanlotus into.

    ```bash
    cd <directory-name>
    ```

1. Save your username and password in the git credential store and do a `git pull`.

    ```bash
    git config --global credential.helper store
    git pull --rebase
    ```

    You will be asked for your username and password again but they will be saved in the file `~/.git-credentials` for future use.

1. Set the commit username and email address locally just for this repository.

    ```bash
    git config --global user.name "<github-username>"
    git config --global user.email "<github-email-address>"
    ```

1. Set up the default editor globally for amending of commits.

    ```bash
    git config --global core.editor "<editor>"
    ```

1. Create a Python 3 virtual environment, activate it and install pelican and associated dependencies.

    ```bash
    python -m venv venv
    source venv/bin/activate
    pip install -r requirements.txt
    ```

    Please note that before doing any development work you would need to activate this environment with:

    ```bash
    source venv/bin/activate
    ```

## Viewing the Site

To generate all content to HTML and start a development server execute:

```bash
make devserver
```

You can then navigate to http://localhost:8000 to view the site.

To cleanup all generated HTML files you may execute:

```bash
make clean
```
