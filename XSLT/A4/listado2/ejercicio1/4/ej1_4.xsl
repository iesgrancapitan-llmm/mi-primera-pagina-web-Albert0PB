<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf8" />
    <xsl:template match='/ies/ciclos'>
        <html>
            <ol>
                <xsl:for-each select='ciclo'>
                    <xsl:sort select='nombre' />
                    <li><xsl:value-of select='nombre' /> (<xsl:value-of select='@id' />)</li>
                </xsl:for-each>
            </ol>
        </html>
    </xsl:template>
</xsl:stylesheet>

<!-- 
    Mostrar en una lista numerada los nombres de los ciclos ordenados alfabéticamente de 
    manera descendente y entre paréntesis su grado.
-->