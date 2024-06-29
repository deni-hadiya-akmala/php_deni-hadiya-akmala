<!DOCTYPE html>
<html>
<head>
    <title>Soal3</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px; 
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>

<h2>Pencarian Data Person dan Hobi</h2>

<form method="GET" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>">
    Nama : <input type="text" id="search_by_nama" name="search_by_Nama" placeholder="Cari Nama"
                 value="<?php echo isset($_GET['search_by_Nama']) ? htmlspecialchars($_GET['search_by_Nama']) : ''; ?>">
    Hobi : <input type="text" id="search_by_hobi" name="search_by_Hobi" placeholder="Cari Hobi"
                 value="<?php echo isset($_GET['search_by_Hobi']) ? htmlspecialchars($_GET['search_by_Hobi']) : ''; ?>">
    Alamat : <input type="text" id="search_by_alamat" name="search_by_Alamat" placeholder="Cari Alamat"
                    value="<?php echo isset($_GET['search_by_Alamat']) ? htmlspecialchars($_GET['search_by_Alamat']) : ''; ?>">
    <button type="submit">Search</button>
</form>

<?php
$host = 'localhost';
$db = 'testdb';
$user = 'root';
$pass = '';

// Buat koneksi ke database
$conn = new mysqli($host, $user, $pass, $db);

// Cek koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

// Query awal untuk mengambil data dari tabel person
$sql = "SELECT person.id, person.nama, person.alamat FROM person";

// Handle pencarian
$where_conditions = [];

if (isset($_GET['search_by_Nama']) && !empty($_GET['search_by_Nama'])) {
    $search_nama = $conn->real_escape_string($_GET['search_by_Nama']);
    $where_conditions[] = "person.nama LIKE '%$search_nama%'";
}

if (isset($_GET['search_by_Hobi']) && !empty($_GET['search_by_Hobi'])) {
    $search_hobi = $conn->real_escape_string($_GET['search_by_Hobi']);
    $sql .= " LEFT JOIN hobi ON person.id = hobi.person_id";
    $where_conditions[] = "hobi.hobi LIKE '%$search_hobi%'";
}

if (isset($_GET['search_by_Alamat']) && !empty($_GET['search_by_Alamat'])) {
    $search_alamat = $conn->real_escape_string($_GET['search_by_Alamat']);
    $where_conditions[] = "person.alamat LIKE '%$search_alamat%'";
}

// Gabungkan semua kondisi WHERE menggunakan AND
if (!empty($where_conditions)) {
    $sql .= " WHERE " . implode(" AND ", $where_conditions);
}

$result = $conn->query($sql);

if ($result) {
    if ($result->num_rows > 0) {
        echo '<table>';
        echo '<tr><th>ID</th><th>Nama</th><th>Alamat</th><th>Hobi</th></tr>';
        
        // Loop melalui hasil query dan tampilkan data
        while($row = $result->fetch_assoc()) {
            echo '<tr>';
            echo '<td>' . htmlspecialchars($row['id'] ?? '') . '</td>';
            echo '<td>' . htmlspecialchars($row['nama'] ?? '') . '</td>';
            echo '<td>' . htmlspecialchars($row['alamat'] ?? '') . '</td>';
            
            // Query untuk mendapatkan hobi berdasarkan person_id
            $person_id = $row['id'];
            $sql_hobi = "SELECT hobi FROM hobi WHERE person_id = $person_id";
            $result_hobi = $conn->query($sql_hobi);
            
            // Menggabungkan semua hobi menjadi satu string
            $hobis = [];
            if ($result_hobi->num_rows > 0) {
                while ($hobi_row = $result_hobi->fetch_assoc()) {
                    $hobis[] = $hobi_row['hobi'];
                }
            }
            echo '<td>' . implode(', ', $hobis) . '</td>';
            
            echo '</tr>';
        }
        
        echo '</table>';
    } else {
        echo '<p>Tidak ada data yang sesuai dengan pencarian.</p>';
    }
} else {
    echo '<p>Error: ' . $conn->error . '</p>';
}

// Tutup koneksi
$conn->close();
?>

</body>
</html>
