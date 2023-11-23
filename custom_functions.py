"""Custom functions to programmatically set constants in pelicanconf.py."""
import os


def get_image_dirs():
    """Return a list of image directories."""
    # Add Pelican's default image directory
    image_dirs = ["images"]

    # Add all other blog or page specific image directories
    blogs_dir = "content/blogs"
    for item in os.listdir(blogs_dir):
        if os.path.isdir(os.path.join(blogs_dir, item)):
            if "images" in os.listdir(os.path.join(blogs_dir, item)):
                image_dirs.append(os.path.join("blogs", item, "images"))
    return image_dirs


def get_image_destination_paths():
    """Map image directories to their final destination in outputs and return it."""
    # This has been done so that open graph images are available even if they are not
    # used in the article or page.
    extra_path_metadata = {}
    for image_path in get_image_dirs():
        # Filter out the global images directory as the destination
        # for this directory is different and is handled by Pelican
        if image_path != "images":
            extra_path_metadata[image_path] = {"path": "blogs/images"}
    return extra_path_metadata
