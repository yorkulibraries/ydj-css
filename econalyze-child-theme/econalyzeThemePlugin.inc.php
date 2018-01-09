<?php

import('lib.pkp.classes.plugins.ThemePlugin');

class econalyzeThemePlugin extends ThemePlugin {
  
  public function init() {
    $this->setParent('defaultthemeplugin');
    $this->modifyStyle('stylesheet', array('addLess' => array('styles/variables.less','styles/custom.less','header-image.less')));
  }
  
  public function getDisplayName() {
    return 'econalyze child theme';
  }
  
  public function getDescription() {
    return 'This is a custom theme developed by the digital projects team at York University Libraries.';
  }
}

?> 
