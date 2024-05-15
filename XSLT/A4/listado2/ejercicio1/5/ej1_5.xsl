<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf8" />
    <xsl:template match='/ies'>
        <html>
            <h1><xsl:value-of select='@nombre' /></h1>
            <table>
                <tr>
                    <th>Nombre del ciclo</th>
                    <th>Año</th>
                </tr>
                <xsl:for-each select='ciclos/ciclo'>
                    <tr>
                        <xsl:if test='decretoTitulo/@año &gt; 2009'>
                            <td><xsl:value-of select='nombre' style='color: green'/></td>
                            <td><xsl:value-of select='decretoTitulo/@año' style='color: green' /></td>
                        </xsl:if>
                        <xsl:if test='decretoTitulo/@año &lt; 2009'>
                            <td><xsl:value-of select='nombre' style='color: red'/></td>
                            <td><xsl:value-of select='decretoTitulo/@año' style='color: red' /></td>
                        </xsl:if>
                        <xsl:if test='decretoTitulo/@año = 2009'>
                            <td><xsl:value-of select='nombre' style='color: blue'/></td>
                            <td><xsl:value-of select='decretoTitulo/@año' style='color: green' /></td>
                        </xsl:if>
                    </tr>
                </xsl:for-each>
            </table>
        </html>
    </xsl:template>
</xsl:stylesheet>

<!-- 
    Mostrar en una etiqueta H1 el nombre del instituto y luego en una tabla con su fila 
    encabezado las siguientes columnas, nombre del ciclo y año. Si el año es mayor al 2009 
    la letra será de color verde, si es igual al 2009 de color azul y si es menor al 2009 
    de color rojo.
    TODO: esto no funciona.
-->