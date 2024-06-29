<?php


$jml = $_GET['jml'];

echo "<table border=1>\n";

// Looping dari nilai 'jml' hingga 1 untuk membuat baris tabel
for ($a = $jml; $a > 0; $a--)
{
  echo "<tr>\n";

  // Looping dari nilai baris saat ini hingga 1 untuk membuat kolom dalam baris tersebut
  for ($b = $a; $b > 0; $b--)
  {
    echo "<td>$b</td>";
  }

 
  echo "</tr>\n";
}

echo "</table>";

?>
