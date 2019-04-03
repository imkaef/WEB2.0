<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <style>
                    ul li ol{
                    display:none;
                    }
                    ul li:hover ol{
                    display:block}
                </style>
            </head>
            <body>
                <h1>
                    GamesЫ
                </h1>
                    <xsl:for-each select="ALAWAR_EXPORT/Languages/Language/Catalogs/Catalog/Dictionaries/Dictionary[@Code='Genre']/DictionaryItem">
                        <xsl:value-of select="Name"/>
                    </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>