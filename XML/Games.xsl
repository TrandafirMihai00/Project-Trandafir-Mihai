<?xml version="1.0" ?>   
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/">
        <link rel="stylesheet" type="text/css" href="Asociatie.css"/>
        
        <html>
            <head>
                <title>Games of the year</title>
                
            </head>
            
            <body bgcolor="#202020">
                <Center>
                    <h1 style="color:white"> Games of the year </h1>
                    
                    
                    <table border="1" bgcolor="#BA55D3" cellspacing="0" cellpadding="15">
                        <tr>
                            <td>
                                <div align="center">
                                    <strong>Game title</strong>
                                </div>
                            </td>
                            <td>
                                <div align="center">
                                    <strong>Copies sold</strong>
                                </div>
                            </td>
                            <td>
                                <div align="center">
                                    <strong>Price €</strong>
                                </div>
                            </td>
                            <td>
                                <div align="center">
                                    <strong>Genre</strong>
                                </div>
                            </td>
                            <td>
                                <div align="center">
                                    <strong>Developer</strong>
                                </div>
                            </td>
                        </tr>
                        
                        <xsl:for-each select="games/game">
                            <tr>
                                <td><xsl:value-of select="title"/></td>
                                <td><xsl:value-of select="copies-sold"/></td>
                                <td><xsl:value-of select="price"/></td>
                                <td><xsl:value-of select="genre"/></td>
                                <td><xsl:value-of select="developer"/></td>
                            </tr>
                        </xsl:for-each>
                        
                    </table>
                </Center>
            </body>
        </html>
        
    </xsl:template>
    
</xsl:stylesheet>