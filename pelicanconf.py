#!/usr/bin/env python
# -*- coding: utf-8 -*- #

AUTHOR = "R (Chandra) Chandrasekhar"
SITENAME = "SwanLotus"
SITEURL = "http://localhost:8000"

PATH = "content"

TIMEZONE = "Asia/Kolkata"

DEFAULT_LANG = "en"
DEFAULT_DATE_FORMAT = "%Y-%m-%d"

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

PLUGIN_PATHS = ["plugins"]
PLUGINS = [
    "pandoc_reader"
]

PANDOC_DEFAULT_FILES = [
    "swanlotus_html5.yaml"
]

LOAD_CONTENT_CACHE = False

THEME = "theme/swanlotus"
THEME_STATIC_PATHS = ["static"]
THEME_STATIC_DIR = "theme"
CSS_FILE = "swanlotus.css"

INDEX_SAVE_AS = 'blog.html'

MENUITEMS = (
    ("Home", "index.html"),
    ("Blogs", "blog.html"),
    ("Secrets of Academic Success", "sas.html")
)

DIRECT_TEMPLATES = ['index', 'categories', 'tags', 'archives']

PATH = 'content'
ARTICLE_PATHS = ['blog']
ARTICLE_SAVE_AS = 'blog/{slug}.html'
ARTICLE_URL = 'blog/{slug}.html'

USE_FOLDER_AS_CATEGORY = False

# Blogroll
LINKS = (("Pelican", "https://getpelican.com/"),
         ("Python.org", "https://www.python.org/"),
         ("Jinja2", "https://palletsprojects.com/p/jinja/"),
         ("You can modify those links in your config file", "#"),)

# Social widget
SOCIAL = (("You can add links in your config file", "#"),
          ("Another social link", "#"),)

DEFAULT_PAGINATION = 10

# Uncomment following line if you want document-relative URLs when developing
#RELATIVE_URLS = True
