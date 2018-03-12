for $b in //datosPer
let $a:= //datosPer/lugarnac
where every $a in $b satisfies

 contains($a,"Reino")
 
return  

<tr><td>{$b}</td></tr>