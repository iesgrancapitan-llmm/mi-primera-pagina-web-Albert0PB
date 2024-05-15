<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf8" />
    <xsl:template match='/ies/ciclos/ciclo'>
        <html>
            <ul>
                <li><xsl:value-of select='nombre' /> (<xsl:value-of select='@id' />)</li>
            </ul>
        </html>
    </xsl:template>
</xsl:stylesheet>

<!-- 
    Mostrar en una lista sin numerar los nombres de los ciclos y entre paréntesis su grado.
-->