for $profes in (/cursos/curso)

return 

<table>
  <tr>
    <tr>{$profes/nombre}</tr>
    <tr>{$profes/profesor}</tr>
    <tr>{$profes/plazasDisponibles}</tr>
  </tr>
</table>