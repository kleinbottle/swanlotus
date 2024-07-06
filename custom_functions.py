"""Custom functions to programmatically set constants in pelicanconf.py."""
import os

BLOGS_DIR = "blogs"
PAGES_DIR = "pages"
CONTENT_DIR = "content"
IMAGE_DIR = "images"


def get_blog_images():
    """Retrieve source images for blogs."""
    source_images = []
    blogs_dir_path = os.path.join(CONTENT_DIR, BLOGS_DIR)

    for blog_dir in os.listdir(blogs_dir_path):
        if os.path.isdir(os.path.join(blogs_dir_path, blog_dir)):
            # Only continue if there is an images directory available
            if IMAGE_DIR in os.listdir(os.path.join(blogs_dir_path, blog_dir)):
                # Walk the directory path to get image
                # file paths names to add to STATIC_PATHS
                for _, _, images in os.walk(
                    os.path.join(blogs_dir_path, blog_dir, IMAGE_DIR)
                ):
                    for image in images:
                        # We should not have content in the path as it
                        # should be relative to content
                        source_images.append(
                            os.path.join(BLOGS_DIR, blog_dir, IMAGE_DIR, image)
                        )

    return source_images

def get_page_images():
    """Retrieve source images for pages."""
    source_images = []
    image_dir_path = os.path.join(CONTENT_DIR, PAGES_DIR, "images")

    for image in os.listdir(image_dir_path):
        source_images.append(
            os.path.join(PAGES_DIR, "images", image)
        )

    return source_images


def get_destination_images():
    """Map source image directories to their final destination in output and return."""
    # Make unused images available so that they can be used as an open graph image
    extra_path_metadata = {}
    for blog_image in get_blog_images():
        # Map the image source path to the destination path in output
        extra_path_metadata[blog_image] = {
            "path": f"blogs/images/{os.path.split(blog_image)[1]}"
        }

    for page_image in get_page_images():
        # Map the image source path to the destination path in output
        extra_path_metadata[page_image] = {
            "path": f"pages/images/{os.path.split(page_image)[1]}"
        }

    return extra_path_metadata
