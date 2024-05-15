<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf8" />
    <xsl:template match="/ies">
        <html>
            <h1>
                <xsl:value-of select='@nombre' />
            </h1>
            <xsl:for-each select='ciclos/ciclo'>
                <p>
                    <xsl:value-of select='nombre' />
                </p>
            </xsl:for-each>
        </html>
    </xsl:template>
</xsl:stylesheet>

<!-- 
    <?xml version="1.0" encoding="UTF-8"?>
<html>
  <h1>IES Abastos</h1>
  <p>Administración de Sistemas Informáticos en Red</p>
  <p>Desarrollo de Aplicaciones Web</p>
  <p>Sistemas Microinformáticos y Redes</p>
</html>
-->