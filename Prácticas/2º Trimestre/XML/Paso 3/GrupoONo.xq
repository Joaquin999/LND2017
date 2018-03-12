for $grupo in //datosPer

let $siOno:= count($grupo[grupo="Si"])

where $siOno=1

return 
<tr><td>
{$grupo/nombre}
</td></tr>


