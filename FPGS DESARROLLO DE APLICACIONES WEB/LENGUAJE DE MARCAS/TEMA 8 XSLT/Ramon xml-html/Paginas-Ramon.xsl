<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-system="about:legacy-compat"/>
<xsl:template match="/marcadores">
  <html>
    <body>
      <h2>Marcadores</h2>
        <ul>
          <xsl:for-each select="marcador">
            <li>
              <a>
                <xsl:attribute name="href">
                  <xsl:value-of select="destino"/>
                </xsl:attribute>
                  <xsl:if test="nuevaVentana"> 
                    <xsl:attribute name="target">_blank</xsl:attribute>
                  </xsl:if> 
                  <xsl:value-of select="enlace"/>
              </a>
            </li>
          </xsl:for-each>
        </ul>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>