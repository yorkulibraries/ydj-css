<?php

import('lib.pkp.classes.plugins.ThemePlugin');

class currentsThemePlugin extends ThemePlugin {
  
  public function init() {
    $this->setParent('defaultthemeplugin');
    $this->modifyStyle('stylesheet', array('addLess' => array('styles/variables.less','styles/custom.less','styles/sidebar.less','styles/article_details.less','styles/components.less','styles/galley_link.less','styles/search.less')));
  }
  
  public function getDisplayName() {
    return 'currents child theme';
  }
  
  public function getDescription() {
    return 'This is a custom theme developed by the digital projects team at York University Libraries.';
  }
}

?> 
