<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>

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
                    TV Programm
                </h1>
                <ul>
                    <xsl:for-each select="/TVGrid/Event">
                        <xsl:if test="preceding-sibling::*[1]/Date != Date">
                            <li>
                                <xsl:value-of select="Date"/>
                                <xsl:variable name="d" select="Date"/>
                                <ol>
                                    <xsl:for-each select="/TVGrid/Event">
                                        <xsl:if test="$d=Date">
                                            <li>
                                                <xsl:value-of select="Start"/>
                                                <xsl:text> - </xsl:text>
                                                <xsl:value-of select="Title"/>
                                            </li>
                                        </xsl:if>
                                    </xsl:for-each>
                                </ol>
                            </li>
                        </xsl:if>
                    </xsl:for-each>
                </ul>
            </body>
        </html>

    </xsl:template>

</xsl:stylesheet>