<?php

// Install PSR-0-compatible class autoloader
spl_autoload_register(function($class){
	require preg_replace('{\\\\|_(?!.*\\\\)}', DIRECTORY_SEPARATOR, ltrim($class, '\\')).'.php';
});

require_once(dirname(__FILE__) . '/../lib/markdown.php');
require_once(dirname(__FILE__) . '/../lib/php-markdown/Michelf/MarkdownExtra.inc.php');


// Get Markdown class
// use \Michelf\Markdown;
use \Michelf\MarkdownExtra;

# MarkDown
$text = file_get_contents(dirname(__FILE__) . '/teikan.md');

# 変換
$html = MarkdownExtra::defaultTransform($text);
echo $html;
?>
