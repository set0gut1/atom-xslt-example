<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:a="http://www.w3.org/2005/Atom">

  <xsl:output method="html" encoding="UTF-8"/>

  <xsl:template match="text()"/>

  <xsl:template match="/importer">
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="a:feed">
    <html>
      <head>
        <title>
          <xsl:value-of select="a:title"/>
        </title>
        <link rel="stylesheet" href="atom.css"/>
      </head>
      <body>
        <h1>
          <xsl:value-of select="a:title"/>
        </h1>
        <ul>
          <xsl:apply-templates/>
        </ul>
      </body>
    </html>
  </xsl:template> 

  <xsl:template match="a:entry">
    <li>
      <xsl:element name="a">
          <xsl:attribute name="href">
              <xsl:value-of select="a:id"/>
          </xsl:attribute>
          <xsl:value-of select="a:title"/>
      </xsl:element>
      :
      <xsl:value-of select="a:summary"/>
    </li>
  </xsl:template> 

</xsl:stylesheet>
