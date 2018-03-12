for $length in //datosPer/nombre
let $long :=string-length($length)
let $nombre:= $length/text()
return 


<tr>
<td>{$nombre," tiene un nombre de longitud ->",$long}</td>
</tr>
