<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf8" />
    <xsl:template match='/ies/ciclos/ciclo'>
        <html>
            <p>
                <xsl:value-of select='nombre' />
            </p>
        </html>
    </xsl:template>
</xsl:stylesheet>

<!-- 
    Mostrar en párrafos cada uno de los nombres de los ciclos.
-->