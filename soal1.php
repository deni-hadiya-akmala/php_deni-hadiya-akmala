<?php
$jml = $_GET['jml'];

echo "<table border=1>\n";

for ($a = $jml; $a > 0; $a--) {
    // Menghitung total untuk baris ini
    $total = 0;
    for ($b = $a; $b > 0; $b--) {
        $total += $b;
    }
    // Menambahkan baris total sebelum baris angka
    echo "<tr><td colspan=\"$a\">TOTAL: $total</td></tr>\n";

    echo "<tr>\n";
    // Looping dari nilai baris saat ini hingga 1 untuk membuat kolom dalam baris tersebut
    for ($b = $a; $b > 0; $b--) {
        echo "<td>$b</td>";
    }
    echo "</tr>\n";
}

echo "</table>";
