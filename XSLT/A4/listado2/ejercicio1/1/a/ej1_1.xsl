<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="utf8" />
    <xsl:template match="/ies/ciclos/ciclo">
        <xsl:value-of select='nombre' />
    </xsl:template>
</xsl:stylesheet>

<!-- 
    Mostrar los nombres de los ciclos sin etiquetas. (sin for-each)
-->