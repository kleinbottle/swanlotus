#!/usr/bin/env python
# -*- coding: utf-8 -*- #
"""Pelican configuration file for SwanLotus website."""
import os
import sys

# Append current directory to the path so that custom_functions module is found
sys.path.append(os.curdir)

from custom_functions import format_lang, get_image_destination_paths, get_image_dirs

AUTHOR = "R (Chandra) Chandrasekhar"
SITENAME = "SwanLotus"
SITEURL = "http://localhost:8000"

PATH = "content"

TIMEZONE = "Asia/Kolkata"

DEFAULT_LANG = "en-GB"
JINJA_FILTERS = {"format_lang": format_lang}

DEFAULT_DATE_FORMAT = "%Y-%m-%d"

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

PANDOC_DEFAULTS_FILES = ["swanlotus_html5.yaml"]

CALCULATE_READING_TIME = True

LOAD_CONTENT_CACHE = True

THEME = "theme/swanlotus"
THEME_STATIC_PATHS = ["static"]
THEME_STATIC_DIR = "theme"
CSS_FILE = "swanlotus.css"

STATIC_PATHS = get_image_dirs()

EXTRA_PATH_METADATA = get_image_destination_paths()

INDEX_SAVE_AS = "blogs.html"

MENUITEMS = (
    ("Home", ["index.html"]),
    ("Blogs", ["blogs.html"]),
    (
        "Books",
        [
            ("Secrets of Academic Success", "sas.html"),
            ("Sanskrit for Spiritual Seekers", "sss.html"),
        ],
    ),
    ("About", ["about.html"])
)

DIRECT_TEMPLATES = ["index", "categories", "tags", "archives"]
IGNORE_FILES = ["blank-template.bib", "blog-template.md"]

PATH = "content"
# ARTICLE_PATHS = [
#     "blogs/varieties-of-multiplication","blogs/the-two-most-important-numbers"
# ]  # draft value: ["blogs/rust-euler-one"]
ARTICLE_PATHS = ["blogs"]
ARTICLE_SAVE_AS = ARTICLE_LANG_SAVE_AS = "blogs/{slug}.html"
ARTICLE_URL = ARTICLE_LANG_URL = "blogs/{slug}.html"
ARTICLE_ORDER_BY = 'reversed-modified'
DRAFT_SAVE_AS = DRAFT_LANG_SAVE_AS = "drafts/{slug}.html"
DRAFT_URL = DRAFT_LANG_URL = "drafts/{slug}.html"

AUTHOR_SAVE_AS = ""

USE_FOLDER_AS_CATEGORY = False

# Blogroll
LINKS = (
    ("Pelican", "https://getpelican.com/"),
    ("Python.org", "https://www.python.org/"),
    ("Jinja2", "https://palletsprojects.com/p/jinja/"),
    ("You can modify those links in your config file", "#"),
)

# Social widget
SOCIAL = (
    ("You can add links in your config file", "#"),
    ("Another social link", "#"),
)

DEFAULT_PAGINATION = 10

# Uncomment following line if you want document-relative URLs when developing
# RELATIVE_URLS = True
