for $x in /library/book
let $maximo:= max(/library/book/price)
where $x/price= $maximo
return $x