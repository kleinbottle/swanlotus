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

1. Clone the swanlotus repository.

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
    git config credential.helper store
    git pull --rebase
    ```

    You will be asked for your username and password again but they will be saved in the file `~/.git-credentials` for future use.

1. Set the commit username and email address locally just for this repository.

    ```bash
    git config user.name "<github-username>"
    git config user.email "<github-email-address>"
    ```

1. Set up the default editor for amending of commits.

    ```bash
    git config core.editor "<editor>"
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

    To deactivate the virtual environment execute:

    ```bash
    deactivate
    ```

## Viewing the Site

To generate all HTML content and start the development server execute:

```bash
make devserver
```

You can then navigate to [localhost](http://localhost:8000) to view the site.

To cleanup all generated HTML files you may execute:

```bash
make clean
```

## Creating Blogs

To create a new blog entry follow the steps below:

1. Create a new directory matching the title of your blog under the `content/blogs` directory.

1. Create a file called `<blog-title>.md` under the `content/blogs/<blog-title>` directory and add your content in Pandoc's flavor of Markdown.

1. If you have citations for the blog create a `<blog-title>.bib` file under the `content/blogs/<blog-title>` directory and add your citations.

1. If you have static content like images create a directory called `images` in the `content/blogs/<blog-title>` directory and place your images in that directory.

1. To attach to static content to your blog use the `{attach}images/<image-name>.<image-extension>` syntax.

1. Convert the blog to HTML locally by executing the following commands:

    ```bash
    make clean
    make devserver
    ```

1. Now you may view the blog on [localhost](http://localhost:8000).

1. Once you are finished with your blog and are happy with the end result, you may commit to GitHub by executing the following commands:

    ```bash
    git add .
    git commit -m "<commit-message>"
    git push
    ```

    **Note: Execute the following commands from the repository root.**

    Once you have pushed the changes Netlify will build the site automatically and the new content will be available on the [site](https://swanlotus.netlify.app).

## Creating Static Pages

To create a static page like the Home page follow the steps below:

1. Create a new page `<page-title>.md` in the `content/pages` directory.

1. Add your content to `<page-title>.md`

1. If you wish to add your new page to the menu bar on the site you would need to add a new entry under `MENUITEMS` setting in the pelicanconf.py file as shown below:

    ```python
    MENUITEMS = (
        ("Home", "index.html"),
        ("Blogs", "blogs.html"),
        ("Secrets of Academic Success", "sas.html"),
        ("<page-title>", "<page-title>.html"),  # New entry added to the end of the tuple
    )
    ```

1. Convert the page to HTML locally by executing the following commands:

    ```bash
    make clean
    make devserver
    ```

1. Now you may view the page on [localhost](http://localhost:8000).

1. Once you are finished with your page and are happy with the end result, you may commit to GitHub by executing the following commands:

    ```bash
    git add .
    git commit -m "<commit-message>"
    git push
    ```

    **Note: Execute the following commands from the repository root.**

    Once you have pushed the changes Netlify will build the site automatically and the new content will be available on the [site](https://swanlotus.netlify.app).
