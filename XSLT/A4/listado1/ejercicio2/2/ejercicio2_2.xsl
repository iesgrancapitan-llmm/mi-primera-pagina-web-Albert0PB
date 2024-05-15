<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf8" />
    <xsl:template match="/ies">
        <html>
            <h1>
                <xsl:value-of select='@nombre' />
            </h1>
            <p>
                <xsl:value-of select='@web' />
            </p>
            <ul>
                <xsl:for-each select='ciclos/ciclo'>
                    <li>
                        <xsl:value-of select='nombre' />
                    </li>
                </xsl:for-each>
            </ul>
        </html>
    </xsl:template>
</xsl:stylesheet>

<!-- 
    <?xml version="1.0" encoding="UTF-8"?>
<html>
  <h1>IES Abastos</h1>
  <p>Página web: <a href="http://www.iesabastos.org/">http://www.iesabastos.org/</a></p>
  <ul>
    <li>Administración de Sistemas Informáticos en Red</li>
    <li>Desarrollo de Aplicaciones Web</li>
    <li>Sistemas Microinformáticos y Redes</li>
  </ul>
</html>
-->