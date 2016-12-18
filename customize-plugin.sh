#!/bin/bash

journal_name=$1
template='yorku-child-theme'
new_theme="$journal_name-child-theme"
plugin_class=$(echo "$journal_name-ThemePlugin" | sed 's/-//g')

cp -R $template/ $new_theme/

mv $new_theme/YorkUThemePlugin.inc.php $new_theme/$plugin_class.inc.php

sed -i "s/YorkUThemePlugin/$plugin_class/g" $new_theme/$plugin_class.inc.php

sed -i "s/yorku\ child\ theme/$journal_name\ child\ theme/g" $new_theme/$plugin_class.inc.php

sed -i "s/YorkUThemePlugin/$plugin_class/g" $new_theme/index.php

sed -i "s/YorkUThemePlugin/$plugin_class/g" $new_theme/version.xml

sed -i "s/yorku-child-theme/$new_theme/g" $new_theme/version.xml
