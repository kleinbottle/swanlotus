#!/usr/bin/env python

import bs4

def main():
    content = ""
    with open("test.html", "r") as fh:
        content = fh.read()

    soup = bs4.BeautifulSoup(content, "html.parser")

    # Remove <DOCTYPE html>
    for c in soup.contents:
        if isinstance(c, bs4.Doctype):
            c.extract()

    # Remove the head part of the document
    soup.find('head').decompose()

    # Extract the table of contents
    table_of_contents = str(soup.body.find("nav", id="TOC"))

    # Remove title block header
    soup.body.find('header', id="title-block-header").decompose()

    # Remove the table of contents
    soup.body.find('nav', id="TOC").decompose()

    # Replace id+TOC with class="toc"
    table_of_contents = table_of_contents.replace('id="TOC"', 'class="toc"')
    soup.body.unwrap()
    soup.html.unwrap()

    print(table_of_contents)
    print(str(soup).strip())
    # with open("content.html", "w") as fh:
    #     fh.write(str(soup).strip())


if __name__ == '__main__':
    main()
