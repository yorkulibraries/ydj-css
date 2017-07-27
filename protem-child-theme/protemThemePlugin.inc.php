<?php

import('lib.pkp.classes.plugins.ThemePlugin');

class protemThemePlugin extends ThemePlugin {
  
  public function init() {
    $this->setParent('defaultthemeplugin');
    $this->modifyStyle('stylesheet', array('addLess' => array('styles/variables.less','styles/header-image.less','styles/custom.less','styles/no-submissions.less','styles/jquery.jcarousel.css','styles/skin.css')));
  
   $this->addScript('carousel','js/jquery.jcarousel.min.js');
   $this->addScript('carousel','js/general.js');
  }
  
  public function getDisplayName() {
    return 'protem child theme';
  }
  
  public function getDescription() {
    return 'This is a custom theme developed by the digital projects team at York University Libraries.';
  }
}

?> 
