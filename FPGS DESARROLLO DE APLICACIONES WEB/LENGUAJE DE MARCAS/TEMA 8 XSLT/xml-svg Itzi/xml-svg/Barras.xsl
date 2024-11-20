<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<!-- Ramon Fernando -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/vendes">

<svg
   xmlns:dc="http://purl.org/dc/elements/1.1/"
   xmlns:cc="http://creativecommons.org/ns#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:svg="http://www.w3.org/2000/svg"
   xmlns="http://www.w3.org/2000/svg"
   xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
   xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
   width="210mm"
   height="297mm"
   viewBox="0 0 744.09448819 1052.3622047"
   id="svg2"
   version="1.1"
   inkscape:version="0.91 r13725"
   sodipodi:docname="Barras.svg">
  <defs
     id="defs4" />
  <sodipodi:namedview
     id="base"
     pagecolor="#ffffff"
     bordercolor="#666666"
     borderopacity="1.0"
     inkscape:pageopacity="0.0"
     inkscape:pageshadow="2"
     inkscape:zoom="0.98994949"
     inkscape:cx="397.96636"
     inkscape:cy="511.88817"
     inkscape:document-units="px"
     inkscape:current-layer="layer1"
     showgrid="false"
     inkscape:window-width="1920"
     inkscape:window-height="1018"
     inkscape:window-x="-8"
     inkscape:window-y="-8"
     inkscape:window-maximized="1" />
  <metadata
     id="metadata7">
    <rdf:RDF>
      <cc:Work
         rdf:about="">
        <dc:format>image/svg+xml</dc:format>
        <dc:type
           rdf:resource="http://purl.org/dc/dcmitype/StillImage" />
        <dc:title></dc:title>
      </cc:Work>
    </rdf:RDF>
  </metadata>
  <g 
     inkscape:label="Capa 1"
     inkscape:groupmode="layer"
     id="layer1">
        <rect style="fill:#ff2a2a;fill-rule:evenodd;stroke:#000000;stroke-width:0.57789874px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
        id="rect3336" width="60" y="520" x="134.35">
          <xsl:attribute name="height">
            -<xsl:value-of select="article/trimestre[@id='primer']/unitats"/>
          </xsl:attribute>
        </rect>
        <rect style="fill:#ffaaaa;fill-rule:evenodd;stroke:#000000;stroke-width:0.60549659px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
        id="rect3336-8" width="60" y="520" x="232.34">
          <xsl:attribute name="height">
            -<xsl:value-of select="article/trimestre[@id='segon']/unitats"/>
          </xsl:attribute>
        </rect>
        <rect style="fill:#ffaaaa;fill-rule:evenodd;stroke:#000000;stroke-width:0.63774252px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
        id="rect3336-9" width="60" y="520" x="335.37">
          <xsl:attribute name="height">
            -<xsl:value-of select="article/trimestre[@id='tercer']/unitats"/>
          </xsl:attribute>
        </rect>
        <rect style="fill:#ffd5d5;fill-rule:evenodd;stroke:#000000;stroke-width:0.66281176px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
        id="rect3336-95" width="60" y="520" x="430.32">
         <xsl:attribute name="height">
          -<xsl:value-of select="article/trimestre[@id='quart']/unitats"/>
        </xsl:attribute>
        </rect>
      </g>
    </svg>
  </xsl:template>
</xsl:stylesheet>

