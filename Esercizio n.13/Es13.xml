<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <html>
            <head>
               
                <title>
                    <xsl:value-of select="TEI/teiHeader/fileDesc/titleStmt/title" />
                </title>
                <xsl:variable name="style" >
                 <link rel="stylesheet" type="text/css" href="./mycss.css" />
                <style>
                    h1{
                        color:blue;
                    }
                </style>
                </xsl:variable>
            </head>
            <body>
                <div class="index">
                    <h1>INDEX</h1>
                    <ul>
                         <xsl:call-templates name="index-template">
                         <xsl:with-param name="chapter" select="//div[@type='chapter']" > color:red </xsl:with-param>
                         </xsl:call-templates>
                    </ul>
                </div>
                <div>
                    <xsl:apply-templates select="child::node()" />
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="div" mode="index">
         <xsl:param name="div-template"/>
        <ul>
            <xsl:for-each select="$div-template">
                <li>
                    <xsl:value-of select="head" />
                </li>
            </xsl:for-each>
        </ul>
    </xsl:template>
    
    <xsl:template match="titleStmt/title">
        <xsl:param name="title-template"/>
        <h2>
            <xsl:value-of select="$title-template" />
        </h2>
    </xsl:template>
    <xsl:template match="div/head">
        <xsl:param name="head-template"/>
        <h3>
            <xsl:value-of select="$head-template" />
        </h3>
    </xsl:template>

<xsl:template match="teiHeader">
    <xsl:param name="teiHeader-template"/>
    <span>[identificativo del documento: <xsl:value-of select="@xml:id" />]</span>
</xsl:template>


</xsl:stylesheet>