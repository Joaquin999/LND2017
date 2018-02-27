for $autor in distinct-values(/library/book/author)
let $libros:=count(library/book[author=$autor])
return ($libros,$autor)





