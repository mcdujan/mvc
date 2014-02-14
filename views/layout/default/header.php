<!DOCTYPE html>
<html>
<head>
    <title>Framework MVC DWS</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="<?php echo $layoutParams['css_path'] ?>/style.css"/>
</head>
<body>
    <div id="main">
        <h1><?php echo isset($this->title) ? $this->title : 'Índice general'; ?></h1>
        
        <div id="top_menu">
            <ul>
                <?php if(isset($layoutParams['menu'])): ?>
                <?php for ($i=0; $i < count($layoutParams['menu']) ; $i++): ?> 
                    <li><a href="<?php echo $layoutParams['menu'][$i]['url']; ?>" >
                        <?php echo $layoutParams['menu'][$i]['title']; ?></a></li>
                <?php endfor; ?>
                <?php endif; ?>
            </ul>
        </div>