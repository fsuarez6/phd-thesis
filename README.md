# Recomended texlive installation

Add the texlive-backports PPA and update the repositories:
```
$ sudo add-apt-repository ppa:texlive-backports/ppa
$ sudo apt-get update
``` 
Install texlive and required packages:
```
$ sudo apt-get install biblatex texlive texlive-generic-extra texlive-humanities texlive-latex-extra texlive-publishers texlive-science
``` 

# Compilation

There are so many options for dealing with this. E.g. `latexmk`, `rubber`, etc. For more see [this](http://stackoverflow.com/questions/1240037/recommended-build-system-for-latex). 

I liked better `scons`. Install it:
```
$ sudo apt-get install scons
``` 

You can build this pdf simply by running from the parent directory (e.g. `~/git/phd-thesis`) this command:
```
$ scons -Q && scons -c
``` 
