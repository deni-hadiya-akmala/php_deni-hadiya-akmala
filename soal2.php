<?php
session_start();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Soal 2</title>
</head>
<body>

<?php
if (!isset($_POST['step'])) {
    $_POST['step'] = 1;
}

if ($_POST['step'] == 1) {
    // Tampilan form untuk nama
    $name = isset($_SESSION['name']) ? $_SESSION['name'] : '';
    echo '<form action="" method="post">
        <label for="name">Nama Anda:</label>
        <input type="text" id="name" name="name" value="' . htmlspecialchars($name) . '" required>
        <input type="hidden" name="step" value="2">
        <button type="submit">Submit</button>
    </form>';
} elseif ($_POST['step'] == 2) {
    if (isset($_POST['name'])) {
        // Simpan nama ke session
        $_SESSION['name'] = $_POST['name'];
    } else {
        $_POST['step'] = 1;
        header("Location: " . $_SERVER['PHP_SELF']);
        exit();
    }

    // Tampilan form untuk umur
    $age = isset($_SESSION['age']) ? $_SESSION['age'] : '';
    echo '<form action="" method="post">
        <label for="age">Umur Anda:</label>
        <input type="number" id="age" name="age" value="' . htmlspecialchars($age) . '" required>
        <input type="hidden" name="step" value="3">
        <button type="submit">Submit</button>
    </form>';
} elseif ($_POST['step'] == 3) {
    if (isset($_POST['age'])) {
        // Simpan umur ke session
        $_SESSION['age'] = $_POST['age'];
    } else {
        $_POST['step'] = 1;
        header("Location: " . $_SERVER['PHP_SELF']);
        exit();
    }

    // Tampilan form untuk hobi
    $hobby = isset($_SESSION['hobby']) ? $_SESSION['hobby'] : '';
    echo '<form action="" method="post">
        <label for="hobby">Hobi Anda:</label>
        <input type="text" id="hobby" name="hobby" value="' . htmlspecialchars($hobby) . '" required>
        <input type="hidden" name="step" value="4">
        <button type="submit">Submit</button>
    </form>';
} elseif ($_POST['step'] == 4) {
    if (isset($_POST['hobby'])) {
        // Simpan hobi ke session
        $_SESSION['hobby'] = $_POST['hobby'];
    } else {
        $_POST['step'] = 1;
        header("Location: " . $_SERVER['PHP_SELF']);
        exit();
    }

    // Tampilkan hasil akhir
    echo '<h2>Hasil Pengisian</h2>';
    echo 'Nama: ' . htmlspecialchars($_SESSION['name'] ?? '') . '<br>';
    echo 'Umur: ' . htmlspecialchars($_SESSION['age'] ?? '') . '<br>';
    echo 'Hobi: ' . htmlspecialchars($_SESSION['hobby'] ?? '') . '<br>';

    // Bersihkan session
    session_destroy();
}
?>

</body>
</html>
