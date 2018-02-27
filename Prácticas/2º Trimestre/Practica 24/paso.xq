for $x in /recetas/receta
where starts-with ($x/@nombre,"Lapas")
return 
<paso>
{$x/preparacion/paso/text()}
</paso>