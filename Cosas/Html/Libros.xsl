<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/bib/book">
        <xsl:key name="t" match="publisher" use="."/>
        <xsl:for-each select="./publisher">
        <ol>
        <li>
        <xsl:choose>
        <xsl:when test="generate-id(publisher) = generate-id(key(" t","publisher"))[1]>

                       </xsl:when>
                       </xsl:choose>
                   </li>

               </ol>
</xsl:for-each>


            <xsl:when test="generate-id(publisher)=generate-id(key("t" ,title))[1]">
        <xsl:value-of select=".//publisher[text()]"/>

        <xsl:value-of select="."/>


    </xsl:template>
</xsl:stylesheet>
