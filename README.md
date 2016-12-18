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

**Note: There is some weird bug in OJS3 with the colour picker for the accent colour. It has a tendency to override your plugin so you'll need to match that colour to the correct variable in variables.less.**
