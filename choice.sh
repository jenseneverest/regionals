#!/bin/sh
#Jenseneverest Crossepg setup for Virgin EPG data.
echo ""
echo "        **********************************************"
echo "        *                                            *"
echo "        *     WELCOME TO THE CROSSEPG ALIAS MOD      *"
echo "        *                                            *"
echo "        *  The required files will now be installed  *"
echo "        *                                            *"
echo "        **********************************************"
echo ""
sleep 5

VIRGIN='/usr/crossepg/scripts/virgin'
PROVIDER='/usr/crossepg/providers'
LONDON='https://github.com/jenseneverest/regionals/raw/master/london.zip'
choice=0

while [ $choice -ne 20 ]
do

clear

echo "                ###############################################"
echo "                #  Choose an ITV region from the list below   #"
echo "                #        Pick a number and press enter        #"
echo "                #                                             #"
echo "                #  1) Anglia                                  #"
echo "                #  2) Tyne & Tees                             #"
echo "                #  3) Border                                  #"
echo "                #  4) Westcountry West                        #"
echo "                #  5) Westcountry SW                          #"
echo "                #  6) Wales                                   #"
echo "                #  7) Meridian                                #"
echo "                #  8) Central West                            #"
echo "                #  9) London                                  #"
echo "                # 10) Granada                                 #"
echo "                #                                             #"
echo "                #                                             #"
echo "                # 19) My Area is not listed - help            #"
echo "                #                                             #"
echo "                # 20) QUIT                                    #"
echo "                ###############################################"

echo ""
echo -n "                Choice: "
read choice

case "$choice" in
 1 ) ./virgin_alias_update.sh ;;
 2 ) ./folder/another ;;
 3 ) ../progs/onemore ;;
 9 ) wget $LONDON && unzip london.zip && sleep 5 && cd london && cp -f update.py /$VIRGIN && cp -f update_script.conf /$PROVIDER && 
echo "                ***********************************************"
echo "                *                                             *"
echo "                *       YOUR ITV REGION HAS BEEN SETUP        *"
echo "                *                                             *"
echo "                ***********************************************"
sleep 4 ;;
 20 ) clear; exit 1 ;;
esac

done

