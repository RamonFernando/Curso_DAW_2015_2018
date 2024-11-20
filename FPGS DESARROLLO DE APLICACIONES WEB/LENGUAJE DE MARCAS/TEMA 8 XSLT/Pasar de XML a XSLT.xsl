<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
  <html>
  <body>
  <h2>Ordenadores</h2>
    <table border="2">
      <tr bgcolor="#9acd32">
        <th style="text-align:left">Marca</th>
        <th style="text-align:left">Modelo</th>
        <th style="text-align:left">Almacen</th>
        <th style="text-align:left">Procesador</th>
        <th style="text-align:left">Memoria</th>
        <th style="text-align:left">DiscoDuro</th>
        <th style="text-align:left">Grafica</th>
      </tr>
      <xsl:for-each select="catalog/cd">
      <tr>
        <td><xsl:value-of select="title"/></td>
        <td><xsl:value-of select="artist"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>