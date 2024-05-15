<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="utf8" />
    <xsl:for-each select='/ies/ciclos/ciclo'>
        <xsl:value-of select='nombre' />
    </xsl:for-each>
</xsl:stylesheet>

<!-- 
    Mostrar los nombres de los ciclos sin etiquetas. (con for-each)
    TODO: esto no funciona.
-->