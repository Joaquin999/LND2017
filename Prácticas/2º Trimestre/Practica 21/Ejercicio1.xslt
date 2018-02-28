<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
  <h1>Majada Marcial Vending Menu</h1>
   <table border="1">

    <tr style="background-color:green">
      <th>Name</th>
      <th>Price</th>
      <th>Calories</th>
    </tr>
    <tr>
      <td><xsl:value-of select="//name[1]"/></td>
      <td><xsl:value-of select="//price[1]"/></td>
      <td><xsl:value-of select="//calories[1]"/></td>
    </tr>
    <tr>
      <td><xsl:value-of select="//name[2]"/></td>
      <td><xsl:value-of select="//price[2]"/></td>
      <td><xsl:value-of select="//calories[2]"/></td>
    </tr>
    <tr>
      <td><xsl:value-of select="//name[3]"/></td>
      <td><xsl:value-of select="//price[3]"/></td>
      <td><xsl:value-of select="/calories[3]"/></td>
    </tr>
     <tr>
      <td><xsl:value-of select="//name[4]"/></td>
      <td><xsl:value-of select="//price[4]"/></td>
      <td><xsl:value-of select="//calories[4]"/></td>
    </tr>
     <tr>
      <td><xsl:value-of select="//name[5]"/></td>
      <td><xsl:value-of select="//price[5]"/></td>
      <td><xsl:value-of select="//calories[5]"/></td>
    </tr>
  </table>
</html>
</xsl:template>
</xsl:stylesheet>