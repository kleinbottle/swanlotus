"""Custom functions to programmatically set constants in pelicanconf.py."""
import os

BLOGS_DIR = "blogs"
CONTENT_DIR = "content"
IMAGE_DIR = "images"


def get_source_image_paths():
    """Retrieve source image paths."""
    source_image_dirs = []
    blogs_dir_path = os.path.join(CONTENT_DIR, BLOGS_DIR)

    for blog_name in os.listdir(blogs_dir_path):
        if os.path.isdir(os.path.join(blogs_dir_path, blog_name)):
            # Only continue if there is an images directory available
            if IMAGE_DIR in os.listdir(os.path.join(blogs_dir_path, blog_name)):
                # Walk the directory path to get image
                # file paths names to add to STATIC_PATHS
                for _, _, image_files in os.walk(
                    os.path.join(blogs_dir_path, blog_name, IMAGE_DIR)
                ):
                    for image_file in image_files:
                        # We should not have content in the path as it
                        # should be relative to content
                        source_image_dirs.append(
                            os.path.join(BLOGS_DIR, blog_name, IMAGE_DIR, image_file)
                        )

    return source_image_dirs


def get_destination_image_paths():
    """Map source image directories to their final destination in output and return."""
    # Make unused images available so that they can be used as an open graph image
    extra_path_metadata = {}
    for image_file_path in get_source_image_paths():
        # Map the image source path to the destination path in output
        extra_path_metadata[image_file_path] = {
            "path": f"blogs/images/{os.path.split(image_file_path)[1]}"
        }
    return extra_path_metadata
