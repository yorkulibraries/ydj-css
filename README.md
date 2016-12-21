#Getting Started

1. Clone this repo. `git clone git@github.com:yorkulibraries/ydj-css.git`
2. Change to ydj-css directory. (If you've previously cloned, make sure to pull any changes before doing work `git pull`)
3. Switch from master branch to ojs3 `git checkout ojs3`. (Pull any changes if necessary `git pull`). 
2. Run the 'customize-plugin.sh' script. It takes one argument, the journal's innitials. `. customize-plugin.sh initials`
3. Change to that directory.
4. Many of the things most editors will want to customize (colours and the like) is in variables.less. 
5. Make any other changes you need.
7. Change directory to parent.
8. Commit and push your changes to the repository.

**Note: There is some weird bug in OJS3 with the colour picker for the accent colour. It has a tendency to override your plugin so you'll need to match that colour to the correct variable in variables.less. Also, if you want to enter in the hex code for the colour, click on the *text* of the colour picker and you'll have that option.**

#Customizing the new plugin/working on your child-theme.

1. The first thing is to familiarize yourself with template (the yorku-child-theme). 
    - The directory has three files: index.php, YorkUThemePlugin.inc.php, and version.xml. These three files are essential for using the child-theme as a plugin. There are two occassions where you might need to edit one of those files:
        1. YorkUThemePlugin.inc.php: The key line for this file is `$this->modifyStyle('stylesheet', array('addLess' => array('styles/variables.less','styles/header-image.less','styles/custom.less')));`. You might need to edit this line if want to add any .less files not already in the styles directory. Add your .less file to the last array in the format you see.
        2. version.xml: This line `<release>0.0.0.1</release>` allows you to change the version of the plugin/child-theme. Update this line if you've made changes to the plugin and want to 'upgrade' the plugin in OJS. It's easier than deleting then re-uploading.
    - Inside the plugin's directory is another called 'styles' and this is where all the custom .less, css, or javascript should be placed. The YorkU child-theme template current has two files in the styles directory:
        1. header-image.less: This file has the basic set of less instructions for having a large image header. You might need to make changes to customize things like width and such.
        2. variables.less: All the variables used then less is compiled to css. Many changes a lot of people want will be here.
2. 
    
    
