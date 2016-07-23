copy/create the script in a folder

make script executable for current user: chmod u+x wallpaperChanger.sh

execute command: crontab -e 

Assuming the script is placed in your home folder, to run the script everyminute add the below line to crontab

*/1 * * * * ${HOME}/wallpaperChanger.sh
