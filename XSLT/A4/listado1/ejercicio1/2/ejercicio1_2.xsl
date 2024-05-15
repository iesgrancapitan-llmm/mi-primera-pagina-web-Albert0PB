<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf8" />
    <xsl:template match='/ies/ciclos'>
        <html lang='es'>
            <body>
                <xsl:for-each select="ciclo">
                    <p><xsl:value-of select="nombre" /></p>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

<!-- 
    De esta manera el resultado es el mismo que en la corrección, que utiliza apply-templates.
    ¿Qué opción es mejor? Funcionamiento de Apply-templates.
-->

<!-- 
    <?xml version="1.0" encoding="UTF-8"?>
<html>
  <p>Administración de Sistemas Informáticos en Red</p>
  <p>Desarrollo de Aplicaciones Web</p>
  <p>Sistemas Microinformáticos y Redes</p>
</html>
-->