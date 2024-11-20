<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/vendes">

<svg id="svg2" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns="http://www.w3.org/2000/svg" height="297mm" width="210mm" version="1.1" xmlns:cc="http://creativecommons.org/ns#" xmlns:dc="http://purl.org/dc/elements/1.1/">
 <metadata id="metadata7">
  <rdf:RDF>
   <cc:Work rdf:about="">
    <dc:format>image/svg+xml</dc:format>
    <dc:type rdf:resource="http://purl.org/dc/dcmitype/StillImage"/>
    <dc:title/>
   </cc:Work>
  </rdf:RDF>
 </metadata>
 <g id="layer1" stroke="#F00" fill="#f9f9f9">
  <rect id="rect2985" width="87.883" y="600" x="60.434" stroke-width="0.64901">
  		<xsl:attribute name="height">
			-<xsl:value-of select="article/trimestre[@id='primer']/unitats"/>
		</xsl:attribute>
  </rect>	
  <rect id="rect3025" width="87.883" y="600" x="210.11">
    	<xsl:attribute name="height">
			-<xsl:value-of select="article/trimestre[@id='segon']/unitats"/>
		</xsl:attribute>
  </rect>	
  <rect id="rect3027" width="92.934" y="600" x="371.74">
    	<xsl:attribute name="height">
			-<xsl:value-of select="article/trimestre[@id='tercer']/unitats"/>
		</xsl:attribute>
  </rect>	
  <rect id="rect3029"  width="82.833" y="600" x="545.48">
    	<xsl:attribute name="height">
			-<xsl:value-of select="article/trimestre[@id='quart']/unitats"/>
		</xsl:attribute>
  </rect>	
 </g>
</svg>
</xsl:template>
</xsl:stylesheet>