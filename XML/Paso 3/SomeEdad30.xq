for $b in //datosPer
let $a:=//datosPer/edad
where some $a in $b

satisfies ($a/edad<30)

return 

<tr><td>{$b}</td></tr>