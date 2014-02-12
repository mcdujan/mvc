<!DOCTYPE html>
<html>
<head>
    <title>Titulo</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="<?php echo $layoutParams['css_path'] ?>/style.css"/>
</head>
<body>
    <div id="main">
        <h1><?php echo isset($this->title) ? $this->title : 'Titulo general'; ?></h1>

