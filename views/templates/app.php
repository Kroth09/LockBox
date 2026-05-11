<!DOCTYPE html>
<html lang="en" data-theme="dracula">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LockBox</title>
    <link href="https://cdn.jsdelivr.net/npm/daisyui@5" rel="stylesheet" type="text/css" />
    <link href="https://cdn.jsdelivr.net/npm/daisyui@5/themes.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>

    <style>
        [data-theme="dracula"] {
            --color-primary: oklch(0.5 0.2 300);
        }
    </style>

</head>
<body class="bg-base-100 text-base-content">
<div class="mx-auto max-w-screen-lg h-screen flex flex-col">

    <?php require base_path('views/partials/_navbar.php'); ?>

    <?php require base_path('views/partials/_pesquisar.php'); ?>

    <?php require base_path('views/partials/_mensagem.php'); ?>

    <div class="flex flex-grow pb-6">
        <?php require base_path("views/{$view}.view.php"); ?>
    </div>

</div>
</body>
</html>