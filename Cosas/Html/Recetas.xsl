<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="recetas/receta">
        <ol>
            <h2>
                <xsl:value-of select="./nombre"/>
            </h2>
            <hr/>
            <ul>
                <li>Dificultad:
                  <xsl:value-of select="//recetas//receta//dificultad"/>
                </li>
                <li>Tipo:
                    <xsl:value-of select="//recetas//receta//tipo//@definicion"/>
                </li>
                <li> Ingredientes:
            <ul type="*">

                <xsl:for-each select="ingredientes/ingrediente">
                    <li>
                        <xsl:value-of select="./@cantidad"/>
                        &#160;de&#160;
                        <xsl:value-of select="./@nombre"/>
                    </li>
                </xsl:for-each>
                <ol>
                    <h3>Pasos a Seguir:</h3>
                    <xsl:for-each select="//receta//pasos//paso">
                        <li>
                            <xsl:value-of select="."/>
                        </li>
                    </xsl:for-each>
                </ol>
            </ul>
                </li>
            </ul>

        </ol>
    </xsl:template>
</xsl:stylesheet>