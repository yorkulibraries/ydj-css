<?php

import('lib.pkp.classes.plugins.ThemePlugin');

class crspThemePlugin extends ThemePlugin {
  
  public function init() {
    $this->setParent('defaultthemeplugin');
    $this->modifyStyle('stylesheet', array('addLess' => array('styles/variables.less','styles/custom.less','styles/barts-theme.less')));
  }
  
  public function getDisplayName() {
    return 'crsp child theme';
  }
  
  public function getDescription() {
    return 'This is a custom theme developed by the digital projects team at York University Libraries.';
  }
}

?> 
