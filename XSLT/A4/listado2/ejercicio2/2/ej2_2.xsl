<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf8" />
    <xsl:template match='/bib'>
        <html>
            <ol>
                <xsl:for-each select='libro'>
                    <xsl:if test='precio &lt; 100'>
                        <li><xsl:value-of select='titulo' /></li>
                    </xsl:if>
                </xsl:for-each>
            </ol>
        </html>
    </xsl:template>
</xsl:stylesheet>

<!-- 
    Mostrar una lista enumerada con todos los títulos de libros cuyo precio sea menor de 100.
-->