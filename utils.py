import os

def format_lang(language_setting):
    """Uppercase country code in DEFAULT_LANG setting in template."""
    lang_code, country_code = language_setting.split("-")
    language_setting = "-".join([lang_code, country_code.upper()])
    return language_setting


def get_image_dirs():
    """Return a list of image directories."""
    # Default directory for images has to be added to the
    # list manually as we are overriding the default setting
    image_dirs = ["images"]
    blogs_dir = "content/blogs"
    for item in os.listdir(blogs_dir):
        if os.path.isdir(os.path.join(blogs_dir, item)):
            if "images" in os.listdir(os.path.join(blogs_dir, item)):
                image_dirs.append(os.path.join("blogs", item, "images"))
    return image_dirs


def get_image_destination_paths():
    """Map image directories to their final destination in outputs and return it."""
    extra_metadata_paths = {}
    for image_path in get_image_dirs():
        # Filter out the global images directory as the destination
        # for this directory is different and is handled by Pelican
        if image_path != "images":
            extra_metadata_paths[image_path] = {"path": "blogs/images"}
    return extra_metadata_paths

