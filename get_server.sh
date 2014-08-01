#!/bin/sh

#########################################################################################
#	The Script is by Max Maxymenko for www.MakeGameServer.com						                	#
#	Facebook: https://www.facebook.com/MakeGameServer							                    		#
#	The script is currently in a Beta testing, expect some bugs!						              #
#	  Found bug? Please email me at: admin@makegameserver.com and tell about it!	       	#
#																				                                            		#   
#		------------------------------------------------------------------------	        	#
#																			                                            			#   
#	To get and run this script, login into your linux server and type the following:    	#
#	wget -O- http://web.makegameserver.com/downloads/linux_files/get_server.sh | sh     	#																		#
#																				                                             		#
#########################################################################################

clear

#VARS
#COLOURS
normal_color="$(tput sgr0) "
black="\033[1;30m"
red="\033[33;31m"
orange="\033[1;31m"
green="\033[33;32m"
yellow="\033[33;33m"
blue="\033[33;34m"
pink="\033[1;35m"
magenta="\033[33;35m"
cyan="\033[33;36m"
#OTHER
wait5="sleep 0.5"
wait10="sleep 1"
wait30="sleep 3"
process=$yellow
#IMPORTANT
version="0.0.1"
username="anonymous"
password=""
install_dir=""
app_id=""
app_id_num=""
app_name=""
done="echo $green[*] Done! "

#PROGRAM

echo $cyan
echo ""
echo "              ##          ##         ###         ##    ###  #########						"
echo "              ###        ###        ## ##        ##    ##   ##							"
echo "              ####      ####       ##   ##       ##   ##    ##							"
echo "              ## ###  ### ##      ##     ##      ##  ##     ##							"
echo "              ##   ####   ##     ##       ##     ######     #######						"
echo "              ##    ##    ##    #############    ##  ##     ## 							"
echo "              ##          ##   ##           ##   ##   ##    ##							"
echo "              ##          ##  ##             ##  ##    ##   ##							"
echo "              ##          ## ###             ### ##    ###  #########						"
echo ""
echo ""
echo "                  #######          ###         ##          ## #########  					"
echo "                ###    ###        ## ##        ###        ### ## 							"
echo "               ##                ##   ##       ####      #### ##							"
echo "              ##                ##     ##      ## ###  ### ## ##							"
echo "              ##   ########    ##       ##     ##   ####   ## #######						"
echo "              ##         ##   #############    ##    ##    ## ##   						"
echo "               ##       ##   ##           ##   ##          ## ##							"
echo "                ##     ##   ##             ##  ##          ## ## 							"
echo "                 #######   ###             ### ##          ## #########   				"
echo "" 
echo ""
echo "        #######  #########  ########    ###              ###  #########  ########  		"
echo "       ###   ### ##         ##     ##    ##              ##   ##         ##     ## 		"
echo "      ###        ##         ##     ##     ##            ##    ##         ##     ##		"
echo "       ###       ##         ##    ##       ##          ##     ##         ##    ##  		"
echo "         ###     #######    #######         ##        ##      #######    #######   		"
echo "           ###   ##         ##   ##          ##      ##       ##         ##   ##   		"
echo "            ###  ##         ##    ##          ##    ##        ##         ##    ##  		"
echo "     ##    ###   ##         ##     ##          ##  ##         ##         ##     ## 		"
echo "      #######    #########  ##      ##          ####          #########  ##      ## 		"
echo ""
echo ""
echo "                       ########        ####       ##          ## 							"
echo "                     ###      ##     ##    ##     ###        ###							"
echo "                    ###             ##       ##   ####      ####							"
echo "                   ##              ##         ##  ## ###  ### ##							"
echo "                   ##              ##         ##  ##   ####   ##							"
echo "                   ##              ##         ##  ##    ##    ##							"
echo "              **    ###       ##    ##       ##   ##          ##							"
echo "             *##*    ###     ##      ##     ##    ##          ##							"
echo "              **      ########         #####      ##          ##							"
echo ""
echo ""
echo ""
echo "$red------------------------- LINUX SCRIPT VERSION $version [BETA] -------------------------$cyan"
echo ""
echo " The script lets you download Steam Game Servers (using SteamCMD) for Linux without the need to know any commands! "
echo " * The script is in a BETA and might have some bugs! "
echo " * Report bugs or give any suggestion here - admin@makegameserver.com "
echo " * Written by Max Maxymenko for MakeGameServer.com "
echo " * Credits to Aleksandar Miletic - for the idea!"
echo " 2014 (C) MakeGameServer.com "
$wait5
echo $normal_color

echo "$process[>>] Please wait untill we install needed packages ('lib32gcc1' and 'dpkg --add-architecture i386'), this may require your password!$normal_color"
echo "$green[>>] Running:$cyan sudo dpkg --add-architecture i386"
echo "$green[>>] Running:$cyan sudo apt-get install lib32gcc1 $normal_color"
sudo dpkg --add-architecture i386
sudo apt-get install lib32gcc1 
echo "$green[*] All packages successfully installed!"
echo $normal_color

echo ""
echo " ##############################################################		"
echo " #                                                            #		"
echo " # 90 ----------- Counter Strike: 1.6 Server                  #		"
echo " # 232330 ------- Counter Strike: Source Server               #		"
echo " # 740 ---------- Counter Strike: Global Offensive Server     #		"
echo " # 232250 ------- Team Fortress 2 Server                      #		"
echo " # 90 mod tfc --- Team Fortress 2 Classic Server              #		"
echo " # 4020 --------- Garry's Mod                                 #		"
echo " #                                                            #		"
echo " # Ctr+C -------- Exit Script                                 #		"
echo " #                                                            #		"
echo " ##############################################################		"
echo ""

echo $process
read -p "[//] Specify the directory for server to install (ie CSS or CS1.6): " install_dir
if [ -z $install_dir ] 
then
	echo "$red[*] The directory can not be empty!!"
	echo "[*] The scipt is now terminated! Please re-run the scipt and specify the directory!"
	echo $normal_color
	exit
fi
echo $process


read -p "[//] Choose the server to download (ie 90 or 232330 etc.): " app_id
if [ -z $app_id ] 
then
	echo "$red[*] The server id can not be empty!!"
	echo "[*] The scipt is now terminated! Please re-run the scipt and specify the server id!"
	echo $normal_color
	exit
fi

#if ( $app_id=="90" )
#then
#	app_name="Counter Strike 1.6 Server"
#fi
#echo $app_name

clear
echo $normal_color
echo "------------------------------------------------------------"
echo " You are logged in as '$USER' " 
echo " Your home directory is '/home/$USER/'"
echo " The server will be downloaded to '/home/$USER/$install_dir'"
echo " Downloading SteamID: $app_id "
echo "------------------------------------------------------------"
echo ""
echo "$process[>>] Please wait... $normal_color"
echo ""
$wait30

#CREATE TEMP DIRECTORY
echo "$process[>>] Creating MSG_TEMP Directory... $red"
if [ -d "MGS_TEMP" ]; then
	if ! (rmdir ~/MGS_TEMP)
	then
		echo "$red[*] Please remove 'MSG_TEMP' directory manually!"
	fi
else
	mkdir MGS_TEMP
	echo "$green[*] Directory created!"
fi
cd ~/MGS_TEMP
echo ""


echo "$process[>>] Connecting the server... $normal_color"
echo ""
wget http://media.steampowered.com/client/steamcmd_linux.tar.gz
echo "$green[*] All files were successfully downloaded! $normal_color"
echo ""
$wait10

echo "$process[>>] Extracting the files ...$normal_color"
tar -xvzf steamcmd_linux.tar.gz

echo "$green[*] Files Extracted! $normal_color"
echo ""
$wait10

echo "$process[>>] Removing Temp Files... $red"
rm *.tar.gz
echo "$green[*] Temp files removed! $normal_color"
echo ""

echo "$process[>>] Setting up your server's directory... $red"
cd ~/
mkdir $install_dir
chmod +x ~/$install_dir/
echo "$green[*] Your new server's directory is '~/$install_dir' or '/home/$USER/$install_dir'"
echo "[*] '$install_dir' - is case sensitive! $normal_color"

echo ""
echo "$process[>>] Moving Temp files... $red"
mv MGS_TEMP/* ~/
$done
echo ""

echo "$process[>>] Cleaning up... $red"
if !( rm -rf MGS_TEMP)
then
	echo "$red[*] Please delete MSG_TEMP manualy!"
else
	$done
fi
echo ""

#CREATING UPDATE SCRIPT
echo "$process[>>] Creating UPDATE sctipt: /home/$USER/updater/$install_dir.txt $red"
if ( ! mkdir ~/updater )
then
 echo "$red[*] Skipped!"
fi
echo "//SERVER UPDATER SCTIPT FOR /home/$USER/$install_dir
login anonymous
force_install_dir /home/$USER/$install_dir
app_update $app_id validate
exit
" > ~/updater/$install_dir.txt 
$done
echo ""


#CREATING STARTING SCTIPT
echo "$process[>>] Creating STARTING sctipt: /home/$USER/start_$install_dir.sh $red"
echo "#!/bin/sh
clear
echo "Starting your server..."
sleep 1
cd ~/$install_dir/

##############################################################
# Remove the '#' symbol before the server you want to start! #
##############################################################




#Counter Strike Source 
#./srcds_run -game cstrike -autoupdate +map de_dust2 +port 27015  +maxplayers 16 +max_fps 600 -tickrate 1000 -steam_dir /home/$USER/ -steamcmd_script /home/$USER/updater/$install_dir.txt -debug

#Counter Strike 1.6
#./hlds_run -console -game cstrike +port 27015 +de_dust2 +maxplayers 16

#Team Fortress 2
#./srcds_run -game tf -autoupdate +map ctf_2fort +port 27015  +maxplayers 16 +max_fps 600 -tickrate 1000 -steam_dir /home/$USER/ -steamcmd_script /home/$USER/updater/$install_dir.txt -debug

#Counter Strike Global Offensive
### Mod: Classic Casual:
#./srcds -game csgo -console -usercon +game_type 0 +game_mode 0 +mapgroup mg_bomb +map de_dust
### Mod: Classic Competitive:
#./srcds -game csgo -console -usercon +game_type 0 +game_mode 1 +mapgroup mg_bomb_se +map de_dust2_se 
### Mod: Arms Race:
#./srcds -game csgo -console -usercon +game_type 1 +game_mode 0 +mapgroup mg_armsrace +map ar_shoots
### Mod: Demolition:
#./srcds -game csgo -console -usercon +game_type 1 +game_mode 1 +mapgroup mg_demolition +map de_lake
### Mod: Deathmatch:
#./srcds -game csgo -console -usercon +game_type 1 +game_mode 2 +mapgroup mg_allclassic +map de_dust



" > ~/start_$install_dir.sh 
$done
echo ""

#CHANHING PERMISIONS
echo "$process[>>] Changing file permisions..."
chmod +x ~/start_$install_dir.sh
chmod +x ~/updater/$install_dir.txt
$done
echo ""

#DOWNLOADING SERVER FROM STEAM
echo "$process[>>] Starting the Installation Process... $normal_color"
sh ~/steamcmd.sh +login $username $password +force_install_dir ~/$install_dir +app_update $app_id validate +quit
echo "$green[*] The server was successfully downloaded! $normal_color"
echo ""

echo "$pink[IMPORTANT] We reccomend you to install 'SCREEN' to keep your server always running! $normal_color"
echo "$orange[?] To install 'SCREEN' type -$normal_color'$cyan sudo apt-get install screen$normal_color'"
echo "$process[>>] Trying to install SCREEN for you... $normal_color"
if ( ! sudo apt-get install screen)
then
	sudo apt-get update
	sudo apt-get install screen
fi
	

$done
echo ""
echo "$pink[IMPORTANT] To start the server, type $normal_color'$cyan screen$normal_color'$pink after it starts press [SPACE] button and type $normal_color'$cyan sh start_$install_dir.sh $normal_color'$pink and then you may disconnect and the server will still be running!$normal_color"
echo ""
echo ""
echo "=============================================  ALL DONE  ============================================="
echo "$yellow[*] Dont forget to edit$cyan start_$install_dir.sh$yellow and$cyan ~/updater/$install_dir.txt$yellow if something does not work!"
echo "$green[*] Thanks for using our script." 
echo "[*] Report any bugs to admin@makegameserver.com"
echo "[*] Visit MakeGameServer.com for more scripts like this! $normal_color"
echo "===================================  2014 (C) MakeGameServer.com  ===================================="
echo ""
echo ""
