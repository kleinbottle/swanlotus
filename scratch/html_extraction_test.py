#!/usr/bin/env python

import bs4
import json

def main():
    content = ""
    with open("eigenvalues-and-eigenvectors.html", "r") as fh:
        content = fh.read()

    soup = bs4.BeautifulSoup(content, "html.parser")

    # Extract the table of contents
    table_of_contents = str(soup.body.find("nav", id="TOC"))

    # Remove the table of contents
    soup.body.find('nav', id="TOC").decompose()

    # Replace id+TOC with class="toc"
    table_of_contents = table_of_contents.replace('id="TOC"', 'class="toc"')
    soup.body.unwrap()

    # print(table_of_contents)
    html = "".join(str(soup).strip().splitlines()[:-1])
    # with open("content.html", "w") as fh:
    #     fh.write(str(soup).strip())
    print(html)
    print(json.loads(content.splitlines()[-1]))



if __name__ == '__main__':
    main()
