# SwanLotus Website

This repository contains the source code and content for the [SwanLotus](https://swanlotus.netlify.app) website.

The website uses the [Pelican](https://blog.getpelican.com/) static site generator.

## Getting Started

Follow the steps below to set up your development environment:

1. Install [Pandoc](https://pandoc.org/MANUAL.html) and [Git](https://git-scm.com/).

    ```bash
    sudo pacman -Syyu
    sudo pacman -S git pandoc
    sudo pacman -S python-pipenv
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

1. Set the commit username, email address and rebase option globally. To set them for just this repository remove `--global` option in the commands below.

    ```bash
    git config --global user.name "<github-username>"
    git config --global user.email "<github-email-address>"
    git config --global pull.rebase true
    ```

1. Set up the default editor for amending commits. Again remove `--global` to just set it for this repository.

    ```bash
    git config --global core.editor "<editor>"
    ```

1. Create a Python 3 development environment for Pelican and associated dependencies.

    ```bash
    pipenv install
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

### Writing only selected blogs

If you are working on a single blog you may want to just generate that blog instead of the whole site to save time.

To do the above set the `ARTICLE_PATHS = ["blogs"]` to `ARTICLE_PATHS = ["blogs/<blog-directory>"]` in `pelicanconf.py`. This way only the blog in that specific directory will be generated.

## Creating Static Pages

To create a static page like the Home page follow the steps below:

1. Create a new page `<page-title>.md` in the `content/pages` directory.

1. Add your content to `<page-title>.md`.

1. If you wish to add your new page to the menu bar on the site you would need to add a new entry under `MENUITEMS` setting in the `pelicanconf.py` file as shown below:

    ```python
    MENUITEMS = (
        ("Home", "index.html"),
        ("Blogs", "blogs.html"),
        ("Secrets of Academic Success", "sas.html"),
        ("<page-title>", "<page-title>.html"),  # New entry added to the end of the tuple
    )
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
    git add .
    git commit -m "<commit-message>"
    git push
    ```

    **Note: Execute the following commands from the repository root.**

    Once you have pushed the changes Netlify will build the site automatically and the new content will be available on the [site](https://swanlotus.netlify.app).

## CSS Stylesheets

The main CSS stylesheet for the site is `swanlotus.css` uses the [Bulma CSS framework](https://bulma.io/) and is generated through [SASS](https://sass-lang.com/).

The stylesheet imports three other stylesheets:

* `citations.scss` - CSS file for citations generated by [pandoc-crossref](https://github.com/lierdakil/pandoc-crossref) filter in standalone mode.
* `zenburn-highlighting.scss` - CSS file for Zenburn code highlighting generated by `pandoc --highlight-style=zenburn --template=highlighting-css.template sample.md -o zenburn-highlighting.css`.
* `fonts-and-alignment.sass` - SASS file corresponding to LaTeX commands for fonts and alignment adapted from the [fonts-and-alignment Lua filter SASS specimen](https://github.com/nandac/fonts-and-alignment/blob/main/specimens/specimen.sass).

## Open Graph Images

If you wish to add an [Open Graph image](https://ogp.me/) to a page or a blog you may do so by adding the following field in the front matter of your blog or page:

```yaml
opengraphimage: "<image-name>.jpg"
```

Due to the limitations of Open Graph only JPG images are supported.

Also, you cannot use an image that is not used in the content of a page or blog as an Open Graph image. This is because Pelican **will not** move an image not used in the content to the desired location on the website.

## Building on Netlify

[Netlify](https://www.netlify.com/) currently uses the [Ubuntu 20.04 LTS Focal Fossa](https://releases.ubuntu.com/20.04/) image to build this site. The latest version of Python on this image is 3.8, so we have set the Python version in the `Pipfile` accordingly. More information about the available packages and their versions are available [here](https://github.com/netlify/build-image/blob/focal/included_software.md).

We always want to use the latest version of Pandoc and the pandoc-crossref filter. These packages may be unavailable or outdated on the image. The Netlify community suggested specifying the pandoc and pandoc-crossref packages in a `Brewfile.netlify` file, which will instruct the builder to download these packages from [Homebrew](https://brew.sh/) and install them on the image. This feature is in early Alpha and may change significantly in the future.

The build system on Netlify uses the following command to build the site:

```bash
pelican content -s publishconf.py
```

The `publishconf.py` file contains settings that are specific to the live site and override the settings in `pelicanconf.py`. **Do not** update `publishconf.py` as this may break the live site.
