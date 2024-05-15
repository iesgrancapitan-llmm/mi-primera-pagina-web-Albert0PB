<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf8" />
    <xsl:template match="/ies/ciclos">
        <html>
            <table border='1'>
                <xsl:for-each select="ciclo">
                    <tr>
                        <td>
                            <xsl:value-of select="nombre" />
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
        </html>
    </xsl:template>
</xsl:stylesheet>

<!-- 
    <?xml version="1.0" encoding="UTF-8"?>
<html>
  <table border="1">
    <tr>
      <td>Administración de Sistemas Informáticos en Red</td>
    </tr>
    <tr>
      <td>Desarrollo de Aplicaciones Web</td>
    </tr>
    <tr>
      <td>Sistemas Microinformáticos y Redes</td>
    </tr>
  </table>
</html>
-->