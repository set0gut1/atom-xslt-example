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

## memo

##### why is wrapper.xml needed

If I add a `<?xml-stylesheet?>` declaration to `atom.xml`, I can see the transformed result in the browser.
However, in many cases atom feed is automatically generated and `atom.xml` is not editable.
The `wrapper.xml` solves this problem, which includes the `atom.xml` an as external file, and links to the XML Transform definition file.
I found this technique from [StackOverflow: Apply XSL to External XML](https://stackoverflow.com/questions/1483759/apply-xsl-to-external-xml/).