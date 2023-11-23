# SwanLotus Website

This repository contains the source code and content for the [SwanLotus](https://swanlotus.netlify.app) website.

The website uses the [Pelican](https://blog.getpelican.com/) static site generator.

## Getting Started

Before setting up your development environment please ensure that you have the latest version of Python installed on your machine.

Then follow the steps below to set up your development environment:

1. Install [Sass](https://sass-lang.com/), [Git](https://git-scm.com/), [Pandoc](https://pandoc.org/MANUAL.html), [pipenv](https://pipenv.pypa.io/en/latest/) and [pyenv](https://github.com/pyenv/pyenv).

    ```bash
    sudo pacman -Syyu
    sudo pacman -S dart-sass git pandoc python-pipenv pyenv
    ```

1. Clone the swanlotus repository:

    ```bash
    git clone https://github.com/kleinbottle/swanlotus <directory-name>
    ```

    You will be asked to enter your username and password to clone the repository.

1. Change into the directory you have cloned swanlotus into:

    ```bash
    cd <directory-name>
    ```

1. Save your username and password in the git credential store and update your repository:

    ```bash
    git config credential.helper store
    git pull --rebase
    ```

    You will be asked for your username and password again but they will be saved in the file `~/.git-credentials` for future use.

1. Set the commit username, email address and rebase option globally. To set them for just this repository remove `--global` option in the commands below:

    ```bash
    git config --global user.name "<github-username>"
    git config --global user.email "<github-email-address>"
    git config --global pull.rebase true
    ```

1. Set up the default editor for amending commits. Again remove `--global` to just set it for this repository:

    ```bash
    git config --global core.editor "<editor>"
    ```

1. Create a Python 3 development environment for Pelican and associated dependencies:

    ```bash
    pipenv install --dev
    ```

    You may be asked to install version 3.8.10 of Python by pyenv, answer with `y` at the prompt to install it.

    **Note: Python version 3.8.10 is the latest available on Netlify as of November 2023 so we are setting our development environment to the same version.**

    When Netlify updates their version of Python we would have to update the version in the `.python-version` file and the `python_version` setting in `Pipfile` so that our settings match Netlify.

    Then we would need to destory the existing virtual environment and recreate it:

    ```bash
    pipenv --rm
    pipenv install --dev
    ```

    Again you may be asked to install a version of Python, answer with `y` at the prompt.

## Updating your local repository

To update your local repository with changes from the remote repository execute:

```bash
make pullSL
```

## Viewing the Site

To generate all HTML content and start the development server execute:

```bash
make devserver
```

You can then navigate to [localhost](http://localhost:8000) to view the site.

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
    make pushSL COMMIT_MSG="<commit-message>"
    ```

    Once you have pushed the changes Netlify will build the site automatically and the new content will be available on the [site](https://swanlotus.netlify.app).

### Writing only selected blogs

If you are working on a single blog you may want to just generate that blog instead of the whole site to save time.

To do so, set the `ARTICLE_PATHS = ["blogs/"]` to `ARTICLE_PATHS = ["blogs/<blog-directory>"]` in `pelicanconf.py`. This way only the blog in that specific directory will be generated.

## Creating Pages

To create a static page like the Home page follow the steps below:

1. Create a new page `<page-title>.md` in the `content/pages` directory.

1. Add your content to `<page-title>.md`.

1. If you wish to add your new page to the menu bar on the site you would need to add a new entry under `MENUITEMS` setting in the `pelicanconf.py` file as shown below:

    ```python
    MENUITEMS = (
        ...
        ("<page-title>", "<page-title>.html"),  # New entry added to the end of the tuple
    )
    ```

    If you wish to add submenus you may specify them as:

    ```python
    MENUITEMS = (
        ...
        ...
        ("<menu-item>", [
            ("<submenu-item-one>", "<item-one.html>"),
            ("<submenu-item-two>", "<item-two.html>"),
        ]),
        ...
        ...
    ```

    **Note: The pages on the menu will follow the order of the menu items shown above.**

1. Convert the page to HTML locally by executing the following commands:

    ```bash
    make clean
    make devserver
    ```

1. Now you may view the page on [localhost](http://localhost:8000).

1. Once you are finished with your page and are happy with the end result, you may commit to GitHub by executing the following commands:

    ```bash
    make pushSL COMMIT_MSG="<commit-message>"
    ```

    Once you have pushed the changes Netlify will build the site automatically and the new content will be available on the [site](https://swanlotus.netlify.app).

## CSS Stylesheets

The main CSS stylesheet `swanlotus.css` is generated through [SASS](https://sass-lang.com/) and uses the [Bulma CSS framework](https://bulma.io/).

The main stylesheet imports three other stylesheets:

* `citations.scss` - CSS stylesheet for citations generated by [pandoc-crossref](https://github.com/lierdakil/pandoc-crossref) filter in standalone mode.
* `fonts-and-alignment.sass` - SASS file corresponding to LaTeX commands for fonts and alignment adapted from the [fonts-and-alignment Lua filter SASS specimen](https://github.com/nandac/fonts-and-alignment/blob/main/specimens/specimen.sass).
* `modal.scss` - CSS stylesheet Provides Modal boxes for images through the addition of the `modal-target` class adapted from the [Simple image modal Codepen example](https://codepen.io/sinisag/pen/vPEajE).
* `zenburn-highlighting.scss` - CSS stylesheet for Zenburn code highlighting generated using the command `pandoc --highlight-style=zenburn --template=highlighting-css.template sample.md -o zenburn-highlighting.css`.

To generate the final stylesheet `swanlotus.css` execute:

```bash
make css
```

The stylesheet will now be available in the `theme/swanlotus/static/css` directory.

## JavaScript

The site also uses some JavaScript to enhance the behaviour of the site as explained below:

* `modal.js` - Used by the modal boxes for the enlargment of the images whe clicked. The code for this is adapted from the [Simple image modal Codepen example](https://codepen.io/sinisag/pen/vPEajE).
* `responsive_menu.js` - Used to reduce and expand navigation bar as needed to support multiple screen sizes. The code for this is adapated from the [Bulma Documentation](https://bulma.io/documentation/components/navbar/#navbar-menu).
* `table_of_contents.js` - Expands and collapses the table of contents of blogs as needed to support muliple screen sizes.
* `mathjax-config.js` - Used to load configuration options for MathJax.

### MathJax

As several blogs on this site are mathematical in nature the [MathJax](https://www.mathjax.org/) display engine is used to render mathematical equations and expressions.

MathJax has been configured to use the [STIX2 fonts](https://www.stixfonts.org/) for mathematical expressions.

In addition, all mathematial expressions are scaled to 91% of the original size to match the size of the surrounding text.

These configuration options are set in the `/theme/swanlotus/static/js/mathjax-config.js` file. You may modify these settings as needed.

Please note that the site is using a Beta release of MathJax as the current stable release, 3.2.2 does not have font selection capabilities. For more information on font selection please see these [release notes](https://github.com/mathjax/MathJax-src/releases/tag/4.0.0-alpha.1#fonts).

Once a new stable release of MathJax is available the site will be updated.

## Images

### Modals for Images

To add a Modal box for any image on the website just add the class `modal-target` to the image. This can be done in Pandoc as follows:

```markdown
![<image-caption>]({attach}images/<image-name>.jpg){.modal-target}
```

Please note that the Modal box will noot display the caption only and enlarged version of the image.

### Open Graph Images

If you wish to add an [Open Graph image](https://ogp.me/) to a page or a blog you may do so by adding the following field in the front matter of your blog or page:

```yaml
opengraphimage: "<image-name>.jpg"
```

Both JPG and PNG images are supported by the Open Graph protocol.

Typically, it takes 24 hours for an Open Graph image to appear in WhatsApp. In Telegram access the [Webpage Bot](https://t.me/WebpageBot) and input the webpage link to update the link preview to have it appear immediately.

## Netlify Deployment

[Netlify](https://www.netlify.com/) currently uses the [Ubuntu 20.04 LTS Focal Fossa](https://releases.ubuntu.com/20.04/) image to build this site. More information about the available packages and their versions are available [here](https://github.com/netlify/build-image/blob/focal/included_software.md).

We always want to use the latest version of Pandoc and pandoc-crossref to avail of new features. Since the default Ubuntu image does not always have the most recent versions or may not contain the package at all, the Netlify community suggested to make use of [HomeBrew](https://brew.sh/).

By specifying the packages in a `Brewfile.netlify` we instruct the builder to download the latest version of these packages from Homebrew and install them on the image.

This feature is in early Alpha and may change significantly in the future.

Please see the [Netlify documentation](https://docs.netlify.com/configure-builds/available-software-at-build-time/#tools) for a list of available packages.

To build the site on Netlify use the following Pelican command:

```bash
pelican content -s publishconf.py
```

The `publishconf.py` file contains settings that are specific to the live site and overrides the settings in `pelicanconf.py`.

**Do not** update `publishconf.py` unless you need to change settings on the live site.
