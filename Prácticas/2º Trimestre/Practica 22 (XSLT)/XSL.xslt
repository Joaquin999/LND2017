<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
   <body>
     <h1>Torneo de Ajedrez</h1>
     
     <table border="2">
     
     <tr>
         <th style="Text-align:center">Nombre</th>
         <th style="Text-align:center">Puntos</th>
        </tr>
        
       <xsl:for-each select= "//jugador[nombre = 'Julian']"><!-- TABLAS ROJAS MENORES DE 1500 -->
          <xsl:if test="puntos &lt;1500">
         <tr bgcolor="#f92525">
           <td><xsl:value-of select="nombre"/></td>
          <td><xsl:value-of select=" sum(puntos) div count(puntos)"/></td>
         </tr>
        </xsl:if>
        
        <xsl:if test="((puntos &gt;=1500) and (puntos &lt;1700))">
         <tr bgcolor="#3287cd">
           <td><xsl:value-of select="nombre"/></td>
          <td><xsl:value-of select="sum(puntos) div count(puntos)"/></td>
         </tr>
        </xsl:if>
        
        <xsl:if test="puntos &gt;=1700">
         <tr bgcolor="#42c449">
           <td><xsl:value-of select="nombre"/></td>
          <td><xsl:value-of select="sum(puntos) div count(puntos)"/></td>
         </tr>
        </xsl:if>
        
       </xsl:for-each>
       
       
       <xsl:for-each select= "//jugador[nombre = 'Wiggeta']">
          <xsl:if test="puntos &lt;1500">
         <tr bgcolor="#f92525">
           <td><xsl:value-of select="nombre"/></td>
          <td><xsl:value-of select="sum(puntos) div count(puntos)"/></td>
         </tr>
        </xsl:if>
        
        <xsl:if test="((puntos &gt;=1500) and (puntos &lt;1700))">
         <tr bgcolor="#3287cd">
           <td><xsl:value-of select="nombre"/></td>
          <td><xsl:value-of select="sum(puntos) div count(puntos)"/></td>
         </tr>
        </xsl:if>
        
        <xsl:if test="puntos &gt;=1700">
         <tr bgcolor="#42c449">
           <td><xsl:value-of select="nombre"/></td>
          <td><xsl:value-of select="sum(puntos) div count(puntos)"/></td>
         </tr>
        </xsl:if>
       </xsl:for-each>
       
       
       <xsl:for-each select= "//jugador[nombre = 'Pedro']">
         <xsl:if test="puntos &lt;1500">
         <tr bgcolor="#f92525">
           <td><xsl:value-of select="nombre"/></td>
          <td><xsl:value-of select=" sum(puntos) div count(puntos)"/></td>
         </tr>
        </xsl:if>
        
        <xsl:if test="((puntos &gt;=1500) and (puntos &lt;1700))">
         <tr bgcolor="#3287cd">
           <td><xsl:value-of select="nombre"/></td>
          <td><xsl:value-of select="sum(puntos) div count(puntos)"/></td>
         </tr>
        </xsl:if>
        
        <xsl:if test="puntos &gt;=1700">
         <tr bgcolor="#42c449">
           <td><xsl:value-of select="nombre"/></td>
          <td><xsl:value-of select="sum(puntos) div count(puntos)"/></td>
         </tr>
        </xsl:if>
       </xsl:for-each>
       
       
       <xsl:for-each select= "//jugador[nombre = 'Fernando']">
       <xsl:if test="sum(//puntos) div count(//puntos) &lt;1500">
         <tr bgcolor="#f92525">
           <td><xsl:value-of select="nombre"/></td>
          <td><xsl:value-of select=" sum(puntos) div count(puntos)"/></td>
         </tr>
        </xsl:if>
        
        <xsl:if test="((puntos &gt;=1500) and (puntos &lt;1700))">
         <tr bgcolor="#3287cd">
           <td><xsl:value-of select="nombre"/></td>
          <td><xsl:value-of select="sum(puntos) div count(puntos)"/></td>
         </tr>
        </xsl:if>
        
        <xsl:if test="puntos &gt;=1700">
         <tr bgcolor="#42c449">
           <td><xsl:value-of select="nombre"/></td>
          <td><xsl:value-of select="sum(puntos) div count(puntos)"/></td>
         </tr>
        </xsl:if>
       </xsl:for-each>
     </table>
   </body>
  </html>
  </xsl:template>
</xsl:stylesheet>