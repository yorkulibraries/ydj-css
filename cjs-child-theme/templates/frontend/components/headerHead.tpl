{**
 * templates/frontend/components/headerHead.tpl
 *
 * Copyright (c) 2014-2017 Simon Fraser University
 * Copyright (c) 2000-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Common site header <head> tag and contents.
 *}
<head>
	<meta http-equiv="Content-Type" content="text/html; charset={$defaultCharset|escape}">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>
		{$pageTitleTranslated|strip_tags}
		{* Add the journal name to the end of page titles *}
		{if $requestedPage|escape|default:"index" != 'index' && $currentContext && $currentContext->getLocalizedName()}
			| {$currentContext->getLocalizedName()}
		{/if}
	</title>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js" type="text/javascript"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.6/jquery-ui.min.js" type="text/javascript"></script>
	<script type="mce-text/javascript" src="http://localhost:8000/ojs/plugins/themes/cjs-child-theme/js/jquery.jcarousel.min.js"></script>
<script type="mce-text/javascript" src="http://localhost:8000/ojs/plugins/themes/cjs-child-theme/js/general.js"></script>
	
	{load_header context="frontend"}
	{load_stylesheet context="frontend"}
</head>
