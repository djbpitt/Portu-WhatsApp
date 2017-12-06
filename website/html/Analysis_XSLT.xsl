<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
xmlns:xs="http://www.w3.org/2001/XMLSchema"
xpath-default-namespace="http://www.tei-c.org/ns/1.0"
exclude-result-prefixes="xs"
xmlns="http://www.w3.org/2000/svg">
<xsl:output method="xml" indent="yes"/>
    <xsl:variable name="xspace" select="5"/>
    <xsl:variable name="yspace" select="5"/>



<xsl:template match="/">
    
    <html xmlns="http://www.w3.org/1999/xhtml">
        
        <head>
            <title>Analysis</title>
            <link rel="stylesheet" type="text/css" href="Brooks_SVG4_CSS.css" />
        </head>
        <body>
            <div class="header">
                <h1>Analysis</h1>
                <hr />
                
            </div>
            <div id="abbr">
                <h2>The Use of Abbreviations in Texting</h2>
                <div class="description">
                <p>Below is a graph that represents the amount of times that any notable form of a abbreviation was used within the texting partner groups. This selection is only representative of a few of the converstaions that were captured in the WhatsApp screenshots that we processed.</p>
            </div>
            <div id="abbr1"> <!-- nationality comparison --> 
                <xsl:variable name="totabbr" select="count(//abbr)"/>
                <svg xmlns="http://www.w3.org/2000/svg" width="800" height="800" viewBox="-250 50 1400 250">
                    <g>
                        <polyline points="0,0 0,400 {30*$xspace},400" stroke="black" stroke-width="3" fill="none"/>
                        <!-- graph axis -->
                        
                        <line x1="{10*$xspace}" y1="400" x2="{10*$xspace}" y2="{400 - count(//u[@who='am']//abbr)}" stroke-width="3" stroke="black"/> <!-- American -->
                        <text x="{10*$xspace}" y="450" transform="rotate(30 50,450)">American</text>
                        <text x="{10*$xspace}" y="{400-count(//u[@who='am']//abbr)-20}" text-anchor="middle"><xsl:value-of select="count(//u[@who='am']//abbr)"/></text>
                        
                        
                        <line x1="{20*$xspace}" y1="400" x2="{20*$xspace}" y2="{400 - count(//u[@who='br']//abbr)}" stroke-width="3" stroke="black"/> <!-- Brazilian -->
                        <text x="{20*$xspace}" y="450" transform="rotate(30 100, 450)">Brazilian</text>
                        <text x="{20*$xspace}" y="{400-count(//u[@who='br']//abbr)-20}" text-anchor="middle"><xsl:value-of select="count(//u[@who='br']//abbr)"/></text>
                        <!-- x axis labels -->
                    </g>
                </svg>
            </div>
            <div id="abbr2"> <!-- types of abbreviation comparison -->
                <xsl:variable name="contra" select="count(//abbr[@type='contraction'])"/>
                <xsl:variable name="inf" select="count(//abbr[@type='informal'])"/>
                <xsl:variable name="txtese" select="count(//abbr[@type='textese'])"/>
                <xsl:variable name="numVar" select="count(distinct-values(//abbr/@type))"/>
                <svg xmlns="http://www.w3.org/2000/svg" width="800" height="800" viewBox="-250 50 1400 250">
                    <g>
                        <polyline points="0,0 0,400 {15*$xspace*$numVar},400" stroke="black" stroke-width="3" fill="none"/> <!-- graph axis -->
                        <line x1="{10*$xspace}" y1="400" x2="{10*$xspace}" y2="{400-$contra}" stroke="black" stroke-width="3" /><!-- contraction -->
                        <text x="{10*$xspace}" y="425" transform="rotate(30 50,425)">Contraction</text>
                        <text x="{10*$xspace}" y="{400-$contra - 10}" text-anchor="middle"><xsl:value-of select="count(//abbr[@type='contraction'])"/></text>
                        <line x1="{20*$xspace}" y1="400" x2="{20*$xspace}" y2="{400-$inf}" stroke-width="3" stroke="black"/> <!-- informal -->
                        <text x="{20*$xspace}" y="425" transform="rotate(30 100, 425)">Informal</text>
                        <text x="{20*$xspace}" y="{400-$inf - 25}" text-anchor="middle"><xsl:value-of select="count(//abbr[@type='informal'])"/></text>
                        <line x1="{30*$xspace}" y1="400" x2="{30*$xspace}" y2="{400-$txtese}" stroke="black" stroke-width="3"/><!-- textese -->
                        <text x="{30*$xspace}" y="425" transform="rotate(30 150, 425)">Textese</text>
                        <text x="{30*$xspace}" y="{400-$txtese -25}" text-anchor="middle"><xsl:value-of select="count(//abbr[@type='textese'])"/></text>
                        
                        

                        
                    </g>
                </svg>
            </div>
           </div>
        </body>
    </html>
    
    
    
    
    
    
    
    
</xsl:template>



</xsl:stylesheet>