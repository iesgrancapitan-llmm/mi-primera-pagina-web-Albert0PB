<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf8" />
    <xsl:template match='/bib'>
        <html>
            <ol>
                <xsl:for-each select='libro/autor'>
                    <xsl:sort select='apellido' />
                    <li>
                        <xsl:value-of select='nombre' /><xsl:value-of select='apellido' />
                    </li>
                </xsl:for-each>
            </ol>
        </html>
    </xsl:template>
</xsl:stylesheet>

<!-- 
    Mostrar una lista enumerada con todos los autores ordenados por apellidos.
-->