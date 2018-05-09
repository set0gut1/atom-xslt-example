# atom-xslt-example

1. apply XSL Transformations to atom feed.
2. include transformed feed to index.html as iframe.

## demo

[https://set0gut1.github.io/atom-xslt-example/](https://set0gut1.github.io/atom-xslt-example/)

## sample files

```
docs
├── atom.xml    : feed data.
├── wrapper.xml : wrapping of feed, with link to XSL.
├── wrapper.xsl : XSL transformation rules.
├── wrapper.css : style sheet for transformed feed.
├── index.html  : html includes transformed feed.
└── main.css    : style sheet for html.
```