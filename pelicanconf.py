#!/usr/bin/env python
# -*- coding: utf-8 -*- #
"""Pelican configuration file for SwanLotus website."""

import os


def format_lang(language_setting):
    """Uppercases country code in DEFAULT_LANG setting in template."""
    lang_code, country_code = language_setting.split("-")
    language_setting = "-".join([lang_code, country_code.upper()])
    return language_setting


def get_blog_image_dirs():
    """Return a list of directories that contain the images for each blog."""
    blog_image_dirs = []
    blogs_dir = "content/blogs"
    for item in os.listdir(blogs_dir):
        if os.path.isdir(os.path.join(blogs_dir, item)):
            if "images" in os.listdir(os.path.join(blogs_dir, item)):
                blog_image_dirs.append(os.path.join("blogs", item, "images"))
    return blog_image_dirs


def get_extra_metadata_paths():
    """Return a dictionary that specifies the destination for image directories."""
    extra_metadata_paths = {}
    for image_path in get_blog_image_dirs():
        extra_metadata_paths[image_path] = {"path": "blogs/images"}
    return extra_metadata_paths


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

STATIC_PATHS = get_blog_image_dirs()

EXTRA_PATH_METADATA = get_extra_metadata_paths()

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
    ("About", ["about.html"]),
    ("Search", ["search.html"]),
)

DIRECT_TEMPLATES = ["index", "search", "categories", "tags", "archives"]

PATH = "content"
ARTICLE_PATHS = ["blogs/pattern-matching-in-bash"]  # draft value: ["blogs/rust-euler-one"]
ARTICLE_SAVE_AS = ARTICLE_LANG_SAVE_AS = "blogs/{slug}.html"
ARTICLE_URL = ARTICLE_LANG_URL = "blogs/{slug}.html"
DRAFT_SAVE_AS = DRAFT_LANG_SAVE_AS = "drafts/{slug}.html"
DRAFT_URL = DRAFT_LANG_URL = "drafts/{slug}.html"

AUTHOR_SAVE_AS = ""

USE_FOLDER_AS_CATEGORY = False

# pelican-search settings
SEARCH_HTML_SELECTOR = "main"

# Add after code has been merged for this commit
# https://github.com/pelican-plugins/search/pull/5
# SEARCH_EXCLUDE_HTML_SELECTOR = [
#     "img",
#     ".author",
#     ".date",
#     ".reading-time",
#     "#toc-small-screens"
# ]

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
