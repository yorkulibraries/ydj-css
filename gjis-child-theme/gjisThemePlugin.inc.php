<?php

import('lib.pkp.classes.plugins.ThemePlugin');

class gjisThemePlugin extends ThemePlugin {
  
  public function init() {
    $this->setParent('defaultthemeplugin');
    $this->modifyStyle('stylesheet', array('addLess' => array('styles/variables.less','styles/header-image.less','styles/custom.less','styles/no-submissions.less')));
  }
  
  public function getDisplayName() {
    return 'gjis child theme';
  }
  
  public function getDescription() {
    return 'This is a custom theme developed by the digital projects team at York University Libraries.';
  }
}

?> 
