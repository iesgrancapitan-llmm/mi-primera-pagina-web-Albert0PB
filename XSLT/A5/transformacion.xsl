<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method='html' encoding='utf8'/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Alberto Pérez</title>
            </head>
            <body>
                <h1>Filmoteca</h1>

                <h2>Ordenado cronológicamente</h2>
                
                <table border='2'>
                    <tr>
                        <th>Título</th>
                        <th>Año</th>
                        <th>Director</th>
                    </tr>
                    <xsl:for-each select='filmoteca/peliculas/pelicula'>
                    <xsl:sort select='anno' />
                    <tr>
                        <td><xsl:value-of select='titulo' /></td>
                        <td><xsl:value-of select='anno' /></td>
                        <td>
                            <xsl:value-of select='/filmoteca/directores/director[@id = current()/@dir_id]/nombre' />
                            <xsl:text> </xsl:text>    
                            <xsl:value-of select='/filmoteca/directores/director[@id = current()/@dir_id]/apellido' />
                        </td>
                    </tr>
                    </xsl:for-each>
                </table>

                <h2>Filtro. Películas dirigidas por directores estadounidenses</h2>
                <table border='2'>
                    <tr>
                        <th>Título</th>
                        <th>Año</th>
                        <th>Director</th>
                        <th>Actores Principales</th>
                    </tr>
                    <xsl:for-each select='filmoteca/peliculas/pelicula[@dir_id = /filmoteca/directores/director[nacionalidad="Estadounidense"]/@id]'>
                        <tr>
                            <td><xsl:value-of select='titulo' /></td>
                            <td><xsl:value-of select='anno' /></td>
                            <td>
                                <xsl:value-of select='/filmoteca/directores/director[@id = current()/@dir_id]/nombre' />
                                <xsl:text> </xsl:text>    
                                <xsl:value-of select='/filmoteca/directores/director[@id = current()/@dir_id]/apellido' />
                            </td>
                            <td>
                                <xsl:for-each select='actores_principales/actor'>
                                    <xsl:value-of select='nombre_completo' />
                                    <xsl:if test='position() != last()'>
                                        <br />
                                    </xsl:if>
                                </xsl:for-each>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>