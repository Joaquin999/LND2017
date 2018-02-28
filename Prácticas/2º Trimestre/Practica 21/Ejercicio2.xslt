<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<ol>
<li><xsl:value-of select="//name[1]"/>--&gt;<xsl:value-of select="//description[1]/text()"/></li> 
<li><xsl:value-of select="//name[2]"/>--&gt;<xsl:value-of select="//description[2]/text()"/></li> 
<li><xsl:value-of select="//name[3]"/>--&gt;<xsl:value-of select="//description[3]/text()"/></li> 
<li><xsl:value-of select="//name[4]"/>--&gt;<xsl:value-of select="//description[4]/text()"/></li> 
<li><xsl:value-of select="//name[5]"/>--&gt;<xsl:value-of select="//description[5]/text()"/></li> 
</ol>


</html>
</xsl:template>
</xsl:stylesheet>