# SwanLotus Website

This repository contains the source code and content for the [SwanLotus](https://swanlotus.netlify.app) website.

The website uses the [Pelican](https://blog.getpelican.com/) static site generator.

## Getting Started

Before setting up your development environment please ensure that you have the latest version of Python installed on your machine.

Then follow the steps below to set up your development environment:

1. Install [Pandoc](https://pandoc.org/MANUAL.html), [Git](https://git-scm.com/) [pipenv](https://pipenv.pypa.io/en/latest/), [Sass](https://sass-lang.com/) and [Rust](https://www.rust-lang.org/)).

    ```bash
    sudo pacman -Syyu
    sudo pacman -S git pandoc python-pipenv dart-sass rust
    ```

    We need rust to install the [Stork](https://stork-search.net/) package as it is required for the search functionality explained [here](https://github.com/kleinbottle/swanlotus#searching-the-website).

1. Install the Stork package.

    ```bash
    cargo install stork-search --locked
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

    If you wish to add submenus you may specify them as:

    ```python
    MENUITEMS = (
        ...
        ...
        ("Books", [
            ("Secrets of Academic Success", "sas.html"),
            ("Sanskrit for Spiritual Seekers", "sss.html"),
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

The main CSS stylesheet for the site is `swanlotus.css` uses the [Bulma CSS framework](https://bulma.io/) and is generated through [SASS](https://sass-lang.com/).

The stylesheet imports three other stylesheets:

* `citations.scss` - CSS file for citations generated by [pandoc-crossref](https://github.com/lierdakil/pandoc-crossref) filter in standalone mode.
* `fonts-and-alignment.sass` - SASS file corresponding to LaTeX commands for fonts and alignment adapted from the [fonts-and-alignment Lua filter SASS specimen](https://github.com/nandac/fonts-and-alignment/blob/main/specimens/specimen.sass).
* `modal.scss` - Provides Modal boxes for images through the addition of the `modal-target` class adapted from the [Simple image modal Codepen example](https://codepen.io/sinisag/pen/vPEajE).
* `zenburn-highlighting.scss` - CSS file for Zenburn code highlighting generated by `pandoc --highlight-style=zenburn --template=highlighting-css.template sample.md -o zenburn-highlighting.css`.

To combine all the CSS and SASS files into the one single CSS file execute:

```bash
make css
```

This will create the `swanlotus.css` file in the `theme/swanlotus/static/css` directory.

## JavaScript Files

The site also uses some JavaScript to enhance the behaviour for certain elements. They are:

* `modal.js` - Used by the modal boxes for the animation and enlargment of the images adapted from the [Simple image modal Codepen example](https://codepen.io/sinisag/pen/vPEajE).
* `responsive_meny.js` - Used by the navigation bar to reduce and expand as needed to support multiple screen sizes adapated from the [Bulma Documentation](https://bulma.io/documentation/components/navbar/#navbar-menu).
* `table_of_contents.js` - Expands and collapses the table of contents of blogs on small screen sizes.

## Images

### Modals for Images

To add a Modal box for any image on the website just add the class `modal-target` to the image. This can be done in Pandoc as follows:

```markdown
![<image-caption>]({attach}images/<image-name>.jpg){.modal-target}
```

### Open Graph Images

If you wish to add an [Open Graph image](https://ogp.me/) to a page or a blog you may do so by adding the following field in the front matter of your blog or page:

```yaml
opengraphimage: "<image-name>.jpg"
```

Both JPG and PNG images are supported by the Open Graph protocol.

Typically, it takes 24 hours for an Open Graph image to appear in WhatsApp. If the image does not appear in Telegram even after 24 hours access the [Webpage Bot](https://t.me/WebpageBot) and input the webpage link to update the link preview.

## Searching the website

The SwanLotus website is searchable and uses the [pelican-search](https://github.com/pelican-plugins/search) plugin to achieve this.

The plugin is a wrapper around the Stork package and hence, requires the Stork CLI to be installed and available on the `PATH`.

Every time the site builds it is reindexed by the plugin avoiding the need for any manual intervention if new content is added.

Please reae the [documentation](https://github.com/pelican-plugins/search#readme) on the pelican-search homepage to understand how it is setup on the site.

## Netlify Deployment

[Netlify](https://www.netlify.com/) currently uses the [Ubuntu 20.04 LTS Focal Fossa](https://releases.ubuntu.com/20.04/) image to build this site. The latest version of Python on this image is 3.8, so we have set the Python version in the `Pipfile` accordingly. More information about the available packages and their versions are available [here](https://github.com/netlify/build-image/blob/focal/included_software.md).

We always want to use the latest version of Pandoc, the pandoc-crossref filter and Stork to make avail of the most recent features. Since the default Ubuntu image does not always have the most recent versions or may not contain the package at all, the Netlify community suggested to make use of [HomeBrew](https://brew.sh/).

By specifying the packages in a `Brewfile.netlify` we instruct the builder to download the latest version of these packages from Homebrew and install them on the image.

This feature is in early Alpha and may change significantly in the future.

Netlify uses the following command to build the site:

```bash
pelican content -s publishconf.py
```

The `publishconf.py` file contains settings that are specific to the live site and override the settings in `pelicanconf.py`. **Do not** update `publishconf.py` as this may break the live site.
