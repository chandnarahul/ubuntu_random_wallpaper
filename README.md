copy/create the script in a folder

execute command crontab -e 

--Assuming the script is placed in your home folder, to run the script everyminute add the below line to crontab

*/1 * * * * ${HOME}/wallpaperChanger.sh
