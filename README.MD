1) Create a new text file with a .sh extension.
I created a new file called deploy.sh for my website.

2) Add #!/bin/bash to the top of it.
This is necessary for the “make it executable” part.

3) Add lines that you’d normally type at the command line.
As an example, here’s the full contents of the file I use to deploy general updates to andrewcbancroft.com

#!/bin/bash
hugo
git add .
git commit -m "Updates"
git push

4) At the command line, run chmod u+x YourScriptFileName.sh
I ran chmod u+x deploy.sh to make mine executable.

5) Run it whenever you need!
Now, whenever I deploy changes to my website, I run ./deploy.sh and boom. Done.

