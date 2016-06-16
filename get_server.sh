#!/bin/sh

#########################################################################################
#	The Script is by Max Maxymenko for www.MakeGameServer.com							#
#	Facebook: https://www.facebook.com/MakeGameServer									#
#	The script is currently in a Beta testing, expect some bugs!						#
#	  Found bug? Please email me at: admin@makegameserver.com and tell about it!		#
#																						#
#		------------------------------------------------------------------------		#
#																						#
#	To get and run this script, login into your linux server and type the following: 	#
#	wget  http://web.makegameserver.com/downloads/linux_files/get_server.sh 		 	#																		
#																						#
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
version="0.0.2"
username="anonymous"
password=""
install_dir=""
app_id=""
app_id_num=""
app_name=""
done="echo $green[*] Done! "
steamCmd_web_location="http://media.steampowered.com/client/steamcmd_linux.tar.gz"

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
echo " The script lets you download Steam Game Servers (using SteamCMD) on Linux without the need to know any commands! "
echo " * The script is in a BETA and might have some bugs! "
echo " * Report bugs or give any suggestion here - admin@makegameserver.com "
echo " * Written by Max Maxymenko for MakeGameServer.com "
echo " * Credits to Aleksandar Miletic - for the idea!"
echo " 2014-2015 (C) MakeGameServer.com "
$wait5
echo $normal_color

echo "$process[>>] Please wait untill we install needed packages ('lib32gcc1' and 'dpkg --add-architecture i386'), this may require your password!$normal_color"
#echo "$green[>>] Running:$cyan sudo ape-get update $normal_color"
#sudo apt-get update
echo "$green[>>] Running:$cyan sudo dpkg --add-architecture i386 $normal_color" 
#sudo dpkg --add-architecture i386
if (! sudo dpkg --add-architecture i386) then
sudo apt-get update
fi
echo "$green[>>] Running:$cyan sudo apt-get install lib32gcc1 $normal_color"
if (! sudo apt-get install lib32gcc1) then
sudo apt-get update
fi

echo "$green[*] All packages successfully installed!"
echo $normal_color

echo ""
echo "#####################################################################		"
echo "#	     APP ID 	|		           APP NAME     				  #		"
echo "#- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -#		"
echo "#		  90		|	Counter Strike: 1.6 Server 					  #		"
echo "#- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -#		"
echo "#     232330		|	Counter Strike: Source Server				  #		"
echo "#- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -#		"
echo "#	     740		|	Counter Strike: Global Offensive Server 	  #		"
echo "#- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -#		"
echo "#	    232250		|	Team Fortress 2 Server 						  #		"
echo "#- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -#		"
echo "#   90 mod tfc	|	Team Fortress 2 Classic Server				  #		"
echo "#- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -#		"
echo "# 	 4020 	    |	Garry's Mod Server 						  	  #		"
echo "#- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -#		"
echo "#																      #		"
echo "#				$red Ctr+C $normal_color -------- Exit Script  						  #		"
echo "#																	  #		"
echo "#####################################################################		"
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


read -p "[//] Steam ID of the server to download, if unsure check the table above. (ie 90 or 232330 etc.): " app_id
if [ -z $app_id ] 
then
	echo "$red[*] The server id can not be empty!!"
	echo "[*] The scipt is now terminated! Please re-run the scipt and specify the server id!"
	echo $normal_color
	exit
fi

# ------------------------------------- SET APP_ID and APP_NAME -------------------------------------
if [ "$app_id" = "90" ]
then
	app_name="Counter Strike 1.6 Server"
elif  [ "$app_id" = "232330" ] 
then 
	app_name="Counter Strike Source Server"
elif  [ "$app_id" = "740" ] 
then 
	app_name="Counter Strike Global Offensive Server"
elif [ "$app_id" = "232250" ] 
then 
	app_name="Team Fortress 2 Server"
elif  [ "$app_id" = "90 mod tfc" ] 
then 
	app_name="Team Fortress 2 Classic Server"
elif  [ "$app_id" = "4020" ] 
then 
	app_name="Garry's Mod Server"
else 
	app_name="$red UNKNOWN"
	app_id="0"
	echo "$red[*] Wrong Steam ID has been imputed, please check the table above for correct Steam ID"
	echo "[*] Please re-run the script and try again. $normal_color"
	exit
fi
# ------------------------------------- / SET APP_ID and APP_NAME -------------------------------------

clear
echo $normal_color
echo "------------------------------------------------------------"
echo " You are logged in as '$USER' " 
echo " Your home directory is '/home/$USER/'"
echo " The server will be downloaded to '/home/$USER/$install_dir'"
echo " Downloading: $app_name (SteamID: $app_id)  "
echo "------------------------------------------------------------"
echo ""
echo "$process[>>] Please wait... $normal_color"
echo ""
$wait30

#CREATE TEMP DIRECTORY
echo "$process[>>] Creating MGS_TEMP Directory... $red"
if [ -d "MGS_TEMP" ]; then
	if ! (rmdir ~/MGS_TEMP)
	then
		echo "$red[*] Please remove 'MGS_TEMP' directory manually!"
	fi
else
	mkdir MGS_TEMP
	echo "$green[*] Directory created!"
fi
cd ~/MGS_TEMP
echo ""

#CONNECT TO STEAM SERVER AND GET THE LATEST 'steamcmd' FILES
echo "$process[>>] Connecting to Steam Server... $normal_color"
if ( ! wget $steamCmd_web_location ) then
echo "$red[*] The needed SteamCMD files cannot be downloaded at this moment."
echo "[*] Please try again later. $normal_color"
exit
else
echo "$green[*] All files were successfully downloaded! $normal_color"
fi
echo ""
$wait10

#EXTRACT JUST DOWNLOADED FILES
echo "$process[>>] Extracting the files ...$normal_color"
if (tar -xvzf steamcmd_linux.tar.gz) then
echo "$green[*] Files Extracted! $normal_color"
else
echo "$red[*] An Error has occured while extracting files. Please check that '$cyan steamcmd_linux.tar.gz $red' file exists. $normal_color"
exit
fi
echo ""
$wait10

#----------- PUT IF tar THEN ECHO ////

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
	echo "$red[*] Please delete MGS_TEMP manualy!"
else
	$done
fi
echo ""

#CREATING UPDATE SCRIPT
echo "$process[>>] Creating UPDATE sctipt: /home/$USER/updater/$install_dir.txt $red"
if ( ! mkdir ~/updater )
then
 echo "$red[*] Skipped!"
else
 $done
fi
echo "//SERVER UPDATER SCTIPT FOR /home/$USER/$install_dir
login anonymous
force_install_dir /home/$USER/$install_dir
app_update $app_id validate
exit
" > ~/updater/$install_dir.txt 
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
#./srcds_run -game cstrike -autoupdate +map de_dust2 -port 27015  +maxplayers 16 +max_fps 600 -tickrate 1000 -steam_dir /home/$USER/ -steamcmd_script /home/$USER/updater/$install_dir.txt -debug

#Counter Strike 1.6
#./hlds_run -console -game cstrike -port 27015 +map de_dust2 +maxplayers 16 -autoupdate

#Team Fortress 2
#./srcds_run -game tf -autoupdate +map ctf_2fort -port 27015  +maxplayers 16 +max_fps 600 -tickrate 1000 -steam_dir /home/$USER/ -steamcmd_script /home/$USER/updater/$install_dir.txt -debug

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

#-console -game csgo -usercon +game_type 0 +mapgroup mg_bomb +map de_dust


" > ~/start_$install_dir.sh 
$done
echo ""

#CHANСHING PERMISIONS --------------------------------------------------------------------------
echo "$process[>>] Changing file permisions... (FILES: ~/start_$install_dir.sh, ~/updater/$install_dir.txt  > TO >  'chmod +x')"
chmod +x ~/start_$install_dir.sh
chmod +x ~/updater/$install_dir.txt
$done
echo ""

#DOWNLOADING SERVER FROM STEAM --------------------------------------------------------------------------
echo "$process[>>] Starting the Installation Process... $normal_color"
sh ~/steamcmd.sh +login $username $password +force_install_dir ~/$install_dir +app_update $app_id validate +quit
echo "$green[*] The server was successfully downloaded! $normal_color"
echo ""

echo "$pink[IMPORTANT] We reccomend you to install 'SCREEN' to keep your server always running! $normal_color"
echo "$orange[?] To install 'SCREEN' type -$normal_color'$cyan sudo apt-get install screen$normal_color'"
echo "$process[>>] Trying to install SCREEN for you... $normal_color"
sudo apt-get install screen
$done

#UPDATE IP TABLES
echo echo "$process[>>] Updating IP Tables...$normal_color"
echo "$green[>>] Adding:$cyan iptables -A INPUT -p udp -m udp --sport 27000:27030 --dport 1025:65355 -j ACCEPT"
iptables -A INPUT -p udp -m udp --sport 27000:27030 --dport 1025:65355 -j ACCEPT
$done
echo "$green[>>] Adding:$cyan iptables -A INPUT -p udp -m udp --sport 4380 --dport 1025:65355 -j ACCEPT"
iptables -A INPUT -p udp -m udp --sport 4380 --dport 1025:65355 -j ACCEPT
$done

#DISPLAY THE FINAL INFO --------------------------------------------------------------------------
echo ""
echo "$pink[IMPORTANT] To start the server, type $normal_color'$cyan screen$normal_color'$pink after it starts press [SPACE] button and type $normal_color'$cyan sh start_$install_dir.sh $normal_color'$pink and then you may disconnect and the server will still be running!$normal_color"
echo ""
echo ""
echo "=============================================  ALL DONE  =============================================="
echo "$yellow[*] Dont forget to edit$cyan start_$install_dir.sh$yellow and$cyan ~/updater/$install_dir.txt$yellow if something does not work!"
echo "$green[*] Thanks for using our script." 
echo "[*] Report bugs to admin@makegameserver.com"
echo "[*] Visit MakeGameServer.com for more scripts like this! $normal_color"
echo "=================================  2014-2015 (C) MakeGameServer.com  =================================="
echo ""
echo ""