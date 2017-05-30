<?php

import('lib.pkp.classes.plugins.ThemePlugin');

class jcacsThemePlugin extends ThemePlugin {
  
  public function init() {
    $this->setParent('defaultthemeplugin');
    $this->modifyStyle('stylesheet', array('addLess' => array('styles/variables.less','styles/custom.less','header-image.less')));
  
    $this->addOption('bgColour', 'colour', array(
			'label' => 'plugins.themes.default.option.colour.label',
			'description' => 'plugins.themes.default.option.colour.description',
			'default' => '#1E6292',
		));
		
		// Store additional LESS variables to process based on options
		//$additionalLessVariables = array();
		
				// Update colour based on theme option
		if ($this->getOption('bgColour') !== '#1E6292') {
			$additionalLessVariables[] = '@bg:' . $this->getOption('bgColour') . ';';
		//	if (!$this->isColourDark($this->getOption('baseColour'))) {
		//		$additionalLessVariables[] = '@text-bg-base:rgba(0,0,0,0.84);';
			}

		// Pass additional LESS variables based on options
	//	if (!empty($additionalLessVariables)) {
		//	$this->modifyStyle('stylesheet', array('addLessVariables' => join($additionalLessVariables)));
  }
  
  public function getDisplayName() {
    return 'jcacs child theme';
  }
  
  public function getDescription() {
    return 'This is a custom theme developed by the digital projects team at York University Libraries.';
  }
}

?> 
