<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="utf8" />
    <xsl:template match="/ies/ciclos/ciclo">
        <xsl:value-of select="nombre" />
    </xsl:template>
</xsl:stylesheet>

<!-- 
    <?xml version="1.0" encoding="UTF-8"?>
    Administración de Sistemas Informáticos en Red
    Desarrollo de Aplicaciones Web
    Sistemas Microinformáticos y Redes
-->