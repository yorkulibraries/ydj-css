#Things you'll need...

1. Git (to work and interact with this repo).
2. To install [node.js][nodejs].
3. So you can install [less][less]. 

#Getting Started

1. Clone this repo. `git clone git@github.com:yorkulibraries/ydj-css.git`
2. Change to ydj-css directory. (If you've previously cloned, make sure to pull any changes before doing work `git pull`)
3. Switch from master branch to ojs3 `git checkout ojs3`. (Pull any changes if necessary `git pull`). 
2. Copy the entire 000default directory and rename it to whichever project you are working on.
3. Change to that directory (always leaving 000default untouched).
4. Many of the things most editors will want to customize (colours and the like) is in variables.less. 
5. Make any other changes you need.
6. Generate a css file for uploading to OJS by entering the command: `lessc index.less journal_name.css`. Always use the index.less file since it links to all the other .less files and generates one complete CSS file. You might get a list of errors like 'extend ' .fa' has no matches', these don't matter so you can ignore them. You'll no if a fatal error occurs if your css file isn't generated and the error message will usually tell you which line in which .less file is the problem. Deleting that line (and only that line) should make it work.
7. Change directory to parent.
8. Commit and push your changes to the repository.



[nodejs]: https://nodejs.org/en/
[less]: http://lesscss.org/
