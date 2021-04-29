<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="servicioTecnico//ordenTrabajo">
        <html>
            <head>
                <title>Servicio Técnico</title>
            </head>
            <body>
                <xsl:for-each select=".">
                <table border="1">
                    <tr>
                        <th>
                            Tipo
                        </th>
                        <th>
                            Fecha de Entrada
                        </th>
                    </tr>
                    <tr>
                        <td>

                        </td>
                        <td>

                        </td>
                    </tr>
                </table>

                    <table border='1'>

                        <tr>

                            <th colspan="2" scope="rowgroup">
                               Ordenador
                            </th>
                            <td>
                                Tipo

                            </td>
                            <td>
                                Fecha de Entrada:
                                <xsl:value-of select=".//@fecha_entrada"/>
                            </td>

                        </tr>
                        <tr>
                            <td>
                                <xsl:value-of select=".//@tipo"/>

                            </td>
                            <td>
                                numero de Serie

                            </td>
                            <td>
                                Marca:

                            </td>
                            <td>
                                Modelo:

                            </td>
                            <td>
                                Color:

                                <xsl:choose>
                                    <xsl:when test=".//ordenador[not(color)]">
                                        ######
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select=".//ordenador//color"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </td>
                            <td>
                                SO:
                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>


                    </table>
                    <br/>
                    <hr/>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>