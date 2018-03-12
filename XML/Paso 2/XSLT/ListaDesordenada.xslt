<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body STYLE="font-family:Georgia; font-size:12pt; background-color:#4AADE9; text-align:center;">
<h1>Lugares de Nacimiento</h1>
<xsl:for-each select="artistas/artista/datosPer">
<p><xsl:value-of select="lugarnac"/></p>
</xsl:for-each>
<!--EJEMPLOOOOOOOOOOOOOOOOOOOOOOOO   11111111111111111111-->

<h1>Lista Desordenada de todos los artistas junto con su lugar de nacimiento</h1>
<ul>
  <li><xsl:value-of select="//nombre[1]"/> nació en <xsl:value-of select="//lugarnac[1]"/></li>
    <li><xsl:value-of select="//nombre[2]"/> nació en <xsl:value-of select="//lugarnac[2]"/></li>
      <li><xsl:value-of select="//nombre[3]"/> nació en <xsl:value-of select="//lugarnac[3]"/></li>
        <li><xsl:value-of select="//nombre[4]"/> nació en <xsl:value-of select="//lugarnac[4]"/></li>
          <li><xsl:value-of select="//nombre[5]"/> nació en <xsl:value-of select="//lugarnac[5]"/></li>
            <li><xsl:value-of select="//nombre[6]"/> nació en <xsl:value-of select="//lugarnac[6]"/></li>
              <li><xsl:value-of select="//nombre[7]"/> nació en <xsl:value-of select="//lugarnac[6]"/></li>
                <li><xsl:value-of select="//nombre[8]"/> nació en <xsl:value-of select="//lugarnac[7]"/></li>
                  <li><xsl:value-of select="//nombre[9]"/> nació en <xsl:value-of select="//lugarnac[8]"/></li>
                    <li><xsl:value-of select="//nombre[10]"/> nació en <xsl:value-of select="//lugarnac[9]"/></li>
                    <li><xsl:value-of select="//nombre[11]"/> nació en <xsl:value-of select="//lugarnac[10]"/></li>
                    <li><xsl:value-of select="//nombre[12]"/> nació en <xsl:value-of select="//lugarnac[11]"/></li>
                    <li><xsl:value-of select="//nombre[13]"/> nació en <xsl:value-of select="//lugarnac[12]"/></li>
                    <li><xsl:value-of select="//nombre[14]"/> nació en <xsl:value-of select="//lugarnac[13]"/></li>
                    <li><xsl:value-of select="//nombre[15]"/> nació en <xsl:value-of select="//lugarnac[14]"/></li>
                    <li><xsl:value-of select="//nombre[16]"/> nació en <xsl:value-of select="//lugarnac[15]"/></li>
  </ul>
  <!--EJEMPLO 2222222222222222222222 -->
  
  <h1>Tabla de artistas y sus respectivos éxitos</h1>
  <table border="1px" align="center">
  <tr bgcolor="#a4f4a1">
  <th>Nombre</th>
  <th>Edad</th>
  <th>Sexo</th>
  </tr>
<xsl:for-each select="artistas/artista/datosPer">
  <tr bgcolor="#5be3ff">
  <td><xsl:value-of select="nombre"/> </td>
  <td><xsl:value-of select="edad"/> </td>
  <td><xsl:value-of select="sexo"/> </td>
  </tr>
  </xsl:for-each>
</table><br/><br/>
<!--EJEMPLO 333333333333333333333333333 -->
<table border="1px" align="center">
<tr>
<th>Últimos éxitos de todos los autores</th>
</tr>
<xsl:for-each select="artistas/artista//exitos">
<tr bgcolor="#a4f4a1">
<td><xsl:value-of select="exito[last()]"/></td>
</tr>
</xsl:for-each>
</table>
<!-- EJEMPLO 444444444444444444444444444444444-->
<h1>Datos diversos de todos los autores</h1>
<table border="1px" align="center">



<tr bgcolor="#8ea7ff">
<th>Nombre</th>
<th>Edad</th>
<th>Lugar de Nacimiento</th>
<th>Estado civil</th>
<th>Nombre de su grupo</th>
</tr>
<xsl:for-each select="artistas/artista/datosPer">
<tr bgcolor="#3fff75">
<td><xsl:value-of select="nombre"/></td>
<td><xsl:value-of select="edad"/></td>
<td><xsl:value-of select="lugarnac"/></td>
<td><xsl:value-of select="estado"/></td>
<td><xsl:value-of select="nombregrupo"/></td>
</tr>
</xsl:for-each>

</table>
</body>
  </html>
</xsl:template>
</xsl:stylesheet>
