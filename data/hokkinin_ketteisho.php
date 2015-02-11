<?php

// 設定
define('DOC_NAME', 'hokkinin_ketteisho');

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
$text = file_get_contents(dirname(__FILE__) . '/' . DOC_NAME . '.md');

# 変換
$html = MarkdownExtra::defaultTransform($text);
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<link rel="stylesheet" href="<?php echo DOC_NAME; ?>.css" />
		<title><?php echo DOC_NAME; ?></title>
	</head>
	<body>
	<?php echo $html; ?>
	</body>
</html>
