<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf8" />
    <xsl:template match='/bib'>
        <html>
            <table border='1'>
                <tr>
                    <th>Precio</th>
                    <th>Título</th>
                    <th>Año de publicación</th>
                </tr>
                <xsl:for-each select='libro'>
                    <xsl:sort select='precio' data-type='number'/>
                    <tr>
                        <td><xsl:value-of select='precio' /></td>
                        <td>
                            <xsl:if test='precio &gt; 100'>
                                <strong><xsl:value-of select='titulo' /></strong>
                            </xsl:if>
                            <xsl:if test='precio &lt; 100'>
                                <xsl:value-of select='titulo' />
                            </xsl:if>
                        </td>
                        <td><i><xsl:value-of select='@año' /></i></td>
                    </tr>
                </xsl:for-each>
            </table>
        </html>
    </xsl:template>
</xsl:stylesheet>

<!-- 
    Mostrar una tabla con las siguientes columnas:
Precio del libro, ordenando los resultados por este campo (Nota: se ordenan como si fueran 
cadenas y no números).

Título del libro. Se mostrará el fondo de la celda en color rojo si el precio es mayor de 100.

Año de publicación. Se mostrará el texto en cursiva.

TODO: color de fuente 
-->