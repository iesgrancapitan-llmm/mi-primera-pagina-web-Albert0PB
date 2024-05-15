<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf8" />
    <xsl:template match="/ies/ciclos">
        <html>
            <ul>
                <xsl:for-each select="ciclo">
                    <li><xsl:value-of select="nombre" /></li>
                </xsl:for-each>
            </ul>
        </html>
    </xsl:template>
</xsl:stylesheet>

<!-- 
    <?xml version="1.0" encoding="UTF-8"?>
<html>
  <ul>
    <li>Administración de Sistemas Informáticos en Red</li>
    <li>Desarrollo de Aplicaciones Web</li>
    <li>Sistemas Microinformáticos y Redes</li>
  </ul>
</html>
-->