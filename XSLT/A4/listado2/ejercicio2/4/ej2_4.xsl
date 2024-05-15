<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf8" />
    <xsl:template match='/bib'>
        <html>
            <table border='1'>
                <tr>
                    <th>Título</th>
                    <th>Autor</th>
                    <th>Editor</th>
                </tr>
                <xsl:for-each select='libro'>
                    <xsl:sort select='precio' data-type='number' />
                    <tr>
                        <td>
                            <xsl:value-of select='precio' />
                            <xsl:if test='precio &gt; 100'>
                                <span>(Caro)</span>
                            </xsl:if>
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
        </html>
    </xsl:template>
</xsl:stylesheet>

<!-- 
    Mostrar una tabla con una primera fila de encabezado y con las siguientes columnas:

Título del libro, en color rojo si el precio es mayor de 100, añadiéndole el texto "(Caro)" 
a continuación, ordenando los resultados por este campo.

Autores del libro mostrando primero el nombre y luego el apellido. Si hay más de un autor se 
muestran todos en la misma celda. Si no hay autor se deja en blanco. Separar palabras con 
espacio en blanco.

Editores del libro mostrando el nombre, el apellido y la afiliación. Si hay más de un editor 
se muestran todos en la misma celda. Si no hay editor se deja en blanco. Separar palabras con 
espacio en blanco.

TODO: 'si autor existe'
TODO: separar cadenas con espacios en blanco
-->