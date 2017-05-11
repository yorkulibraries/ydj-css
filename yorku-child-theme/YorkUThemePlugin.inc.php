<?php

import('lib.pkp.classes.plugins.ThemePlugin');

class YorkUThemePlugin extends ThemePlugin {
  
  public function init() {
    $this->setParent('defaultthemeplugin');
    $this->modifyStyle('stylesheet', array('addLess' => array('styles/variables.less','styles/custom.less')));
  
    $this->addOption('baseColour', 'colour', array(
			'label' => 'plugins.themes.default.option.colour.label',
			'description' => 'plugins.themes.default.option.colour.description',
			'default' => '#1E6292',
		));
		
		// Store additional LESS variables to process based on options
		$additionalLessVariables = array();
		
				// Update colour based on theme option
		if ($this->getOption('baseColour') !== '#1E6292') {
			$additionalLessVariables[] = '@bg-base:' . $this->getOption('baseColour') . ';';
			if (!$this->isColourDark($this->getOption('baseColour'))) {
				$additionalLessVariables[] = '@text-bg-base:rgba(0,0,0,0.84);';
			}
		}

		// Pass additional LESS variables based on options
		if (!empty($additionalLessVariables)) {
			$this->modifyStyle('stylesheet', array('addLessVariables' => join($additionalLessVariables)));
		}
  }
  
  public function getDisplayName() {
    return 'yorku child theme';
  }
  
  public function getDescription() {
    return 'This is a custom theme developed by the digital projects team at York University Libraries.';
  }
}

?> 
