echo off
TITLE Windows Setup
ECHO setting up web server directories...
rmdir webpage 
rmdir webpage\css
rmdir webpage\js type nul > slideshow.js/gallery.js
cd ""
echo ^<h1^>batch run successful!^</h1> > index.html
start index.html
echo checking internet connection...
ping google.com
echo saving your network info...
ipconfig > network.txt
echo done
pause
date /t > run_instances.txt
