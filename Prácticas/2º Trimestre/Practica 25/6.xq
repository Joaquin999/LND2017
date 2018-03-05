for $profes in (/cursos/curso)
where $profes/precio/@perioricidad='mensual'
order by $profes/plazasDisponibles
return 

<table>
  <tr>
    <tr>{$profes/nombre}</tr>
    <tr>{$profes/profesor}</tr>
    <tr>{$profes/plazasDisponibles}</tr>
  </tr>
</table>