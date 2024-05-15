<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf8" />
    <xsl:template match="/ies">
        <html>
            <h1>
                Ciclos formativos del <xsl:value-of select='nombre' />
            </h1>
            <ul>
                <xsl:for-each select='ciclos/ciclo'>
                    <li>
                        <xsl:value-of select='@id' /><br /><xsl:value-of select='nombre' />, Ciclo Formativo de Grado <xsl:value-of select='grado' /> creado en <xsl:value-of select='decretoTitulo/@año' />
                    </li>
                </xsl:for-each>
            </ul>
        </html>
    </xsl:template>
</xsl:stylesheet>

<!-- 
    <?xml version="1.0" encoding="UTF-8"?>
<html>
 <h1>Ciclos formativos del IES Abastos</h1>
  <ul>
    <li>ASIR<br/>Administración de Sistemas Informáticos en Red, Ciclo Formativo de Grado Superior creado en 2009</li>
    <li>DAW<br/>Desarrollo de Aplicaciones Web, Ciclo Formativo de Grado Superior creado en 2010</li>
    <li>SMR<br/>Sistemas Microinformáticos y Redes, Ciclo Formativo de Grado Medio creado en 2008</li>
  </ul>
</html>
-->