#!/bin/sh
#Jenseneverest Crossepg mod for Virgin EPG data.
echo ""
echo "        *************************************************"
echo "        *                                               *"
echo "        *      WELCOME TO THE CROSSEPG ALIAS MOD        *"
echo "        *  THIS CONVERTS SAT EPG DATA FOR USE ON CABLE  *"
echo "        *                                               *"
echo "        *************************************************"
echo ""
sleep 4
echo ""
echo "          **********************************************"
echo "          *                                            *"
echo "          *     Checking for crossepg plugin......     *"
echo "          *                                            *"
echo "          **********************************************"
sleep 3
if [ -d /usr/lib/enigma2/python/Plugins/SystemPlugins/CrossEPG ]
then
clear
echo ""
echo "             *******************************************************"
echo "             *      Great you already have crossepg installed      *"
echo "             *     Moving on to installing the virgin alias mod    *"
echo "             *******************************************************"
sleep 4
else 
echo ""
echo "        *********************************************************************"
echo "        *                                                                   *"
echo "        *                You do NOT have crossepg installed                 *"
echo "        *                   Lets install it now for you                     *"
echo "        *                                                                   *"
echo "        *********************************************************************"
sleep 5
opkg install enigma2-plugin-systemplugins-crossepg
clear
echo ""
echo "        *********************************************************************"
echo "        *                                                                   *"
echo "        *              Crossepg Plugin has now been installed               *"
echo "        *   You will need to configure Crossepg - See forum for details     *"
echo "        *            Moving on to installing the alias virgin mod           *"
echo "        *                                                                   *"
echo "        *********************************************************************"
sleep 8
fi
opkg install https://github.com/jenseneverest/regionals/raw/master/crossepg-virgin-alias-mod_5.0.3_all.ipk
echo ""
echo ""
echo "        *********************************************************************"
echo "        *                                                                   *"
echo "        *            The required files have now installed                  *"
echo "        *        You will now get an option to choose your ITV region       *"
echo "        *  This will allow you to update the alias file online as required  *"
echo "        *                                                                   *"
echo "        *********************************************************************"
sleep 9
VIRGIN='/usr/crossepg/scripts/virgin'
PROVIDER='/usr/crossepg/providers'

ANGLIA='https://github.com/jenseneverest/regionals/raw/master/anglia.zip'
BORDER='https://github.com/jenseneverest/regionals/raw/master/border.zip'
CENTRAL='https://github.com/jenseneverest/regionals/raw/master/central.zip'
GRANADA='https://github.com/jenseneverest/regionals/raw/master/granada.zip'
MERIDIAN='https://github.com/jenseneverest/regionals/raw/master/meridian.zip'
LONDON='https://github.com/jenseneverest/regionals/raw/master/london.zip'
TYNE='https://github.com/jenseneverest/regionals/raw/master/tyne.zip'
WALES='https://github.com/jenseneverest/regionals/raw/master/wales.zip'
WESTCOUNTRYSW='https://github.com/jenseneverest/regionals/raw/master/westcountrysw.zip'
WESTCOUNTRYWEST='https://github.com/jenseneverest/regionals/raw/master/westcountrywest.zip'
YORKSHIRE='https://github.com/jenseneverest/regionals/raw/master/yorkshire.zip'

choice=0

while [ $choice -ne 22 ]
do

clear
echo "                *****************************************************"
echo "                #    Choose an ITV region from the list below       #"
echo "                #          Pick a number and press enter            #"
echo "                #                                                   #"
echo "                #    1) Anglia                                      #"
echo "                #    2) Border                                      #"
echo "                #    3) Central                                     #"
echo "                #    4) Granada                                     #"
echo "                #    5) Meridian                                    #"
echo "                #    6) London                                      #"
echo "                #    7) Tyne                                        #"
echo "                #    8) Wales                                       #"
echo "                #    9) Westcountry SW                              #"
echo "                #   10) Westcountry West                            #"
echo "                #   11) Yorkshire                                   #"
echo "                #                                                   #"
echo "                #   19) My Area is not listed - HELP                #"
echo "                #                                                   #"
echo "                #   21) Update alias                                #"
echo "                #   22) EXIT & REBOOT BOX                           #"
echo "                #                                                   #"
echo "                *****************************************************"
echo ""
echo -n "                Choice: "
read choice

case "$choice" in

  1 ) wget $ANGLIA && unzip anglia.zip && sleep 3 && cd anglia && cp -f update.py /$VIRGIN && cp -f update_script.conf /$PROVIDER && 
clear
echo "            ************************************************************"
echo "            *          YOUR ITV REGION HAS BEEN SET TO:   ANGLIA       *"
echo "            *  FUTURE UPDATES TO THE ALIAS FILE VIA PLUGIN NOW SORTED  *"
echo "            ************************************************************"
sleep 4
echo ""
echo "        **********************************************************************"
echo "        *                Your box will reboot in 6 seconds                   *"
echo "        *        Please see linuxsat-support.com for help & questions        *"
echo "        *    Remember to setup Crossepg plugin and update your alias file     *"
echo "        **********************************************************************"
sleep 6
init 4 && reboot ;;



  2 ) wget $BORDER && unzip border.zip && sleep 3 && cd border && cp -f update.py /$VIRGIN && cp -f update_script.conf /$PROVIDER && 
clear
echo "            ************************************************************"
echo "            *          YOUR ITV REGION HAS BEEN SET TO:   BORDER       *"
echo "            *  FUTURE UPDATES TO THE ALIAS FILE VIA PLUGIN NOW SORTED  *"
echo "            ************************************************************"
sleep 4
echo ""
echo "        **********************************************************************"
echo "        *                Your box will reboot in 6 seconds                   *"
echo "        *        Please see linuxsat-support.com for help & questions        *"
echo "        *    Remember to setup Crossepg plugin and update your alias file     *"
echo "        **********************************************************************"
sleep 6
init 4 && reboot ;;


  3 ) wget $CENTRAL && unzip central.zip && sleep 3 && cd central && cp -f update.py /$VIRGIN && cp -f update_script.conf /$PROVIDER && 
clear
echo "            ************************************************************"
echo "            *          YOUR ITV REGION HAS BEEN SET TO:   CENTRAL      *"
echo "            *  FUTURE UPDATES TO THE ALIAS FILE VIA PLUGIN NOW SORTED  *"
echo "            ************************************************************"
sleep 4
echo ""
echo "        **********************************************************************"
echo "        *                Your box will reboot in 6 seconds                   *"
echo "        *        Please see linuxsat-support.com for help & questions        *"
echo "        *    Remember to setup Crossepg plugin and update your alias file     *"
echo "        **********************************************************************"
sleep 6
init 4 && reboot ;;
 
 4 ) wget $GRANADA && unzip granada.zip && sleep 3 && cd granada && cp -f update.py /$VIRGIN && cp -f update_script.conf /$PROVIDER && 
clear
echo "            ************************************************************"
echo "            *          YOUR ITV REGION HAS BEEN SET TO: GRANADA        *"
echo "            *  FUTURE UPDATES TO THE ALIAS FILE VIA PLUGIN NOW SORTED  *"
echo "            ************************************************************"
sleep 4
echo ""
echo "        **********************************************************************"
echo "        *                Your box will reboot in 6 seconds                   *"
echo "        *        Please see linuxsat-support.com for help & questions        *"
echo "        *    Remember to setup Crossepg plugin and update your alias file     *"
echo "        **********************************************************************"
sleep 6
init 4 && reboot ;;

 5 ) wget $MERIDIAN && unzip meridian.zip && sleep 3 && cd meridian && cp -f update.py /$VIRGIN && cp -f update_script.conf /$PROVIDER && 
clear
echo "            ************************************************************"
echo "            *          YOUR ITV REGION HAS BEEN SET TO: MERIDIAN       *"
echo "            *  FUTURE UPDATES TO THE ALIAS FILE VIA PLUGIN NOW SORTED  *"
echo "            ************************************************************"
sleep 4
echo ""
echo "        **********************************************************************"
echo "        *                Your box will reboot in 6 seconds                   *"
echo "        *        Please see linuxsat-support.com for help & questions        *"
echo "        *    Remember to setup Crossepg plugin and update your alias file     *"
echo "        **********************************************************************"
sleep 6
init 4 && reboot ;;
 
 
 6 ) wget $LONDON && unzip london.zip && sleep 3 && cd london && cp -f update.py /$VIRGIN && cp -f update_script.conf /$PROVIDER && 
clear
echo "            ************************************************************"
echo "            *          YOUR ITV REGION HAS BEEN SET TO: LONDON         *"
echo "            *  FUTURE UPDATES TO THE ALIAS FILE VIA PLUGIN NOW SORTED  *"
echo "            ************************************************************"
sleep 4
echo ""
echo "        **********************************************************************"
echo "        *                Your box will reboot in 6 seconds                   *"
echo "        *        Please see linuxsat-support.com for help & questions        *"
echo "        *    Remember to setup Crossepg plugin and update your alias file     *"
echo "        **********************************************************************"
sleep 6
init 4 && reboot ;;


 7 ) wget $TYNE && unzip tyne.zip && sleep 3 && cd tyne && cp -f update.py /$VIRGIN && cp -f update_script.conf /$PROVIDER && 
clear
echo "            ************************************************************"
echo "            *          YOUR ITV REGION HAS BEEN SET TO: TYNE           *"
echo "            *  FUTURE UPDATES TO THE ALIAS FILE VIA PLUGIN NOW SORTED  *"
echo "            ************************************************************"
sleep 4
echo ""
echo "        **********************************************************************"
echo "        *                Your box will reboot in 6 seconds                   *"
echo "        *        Please see linuxsat-support.com for help & questions        *"
echo "        *    Remember to setup Crossepg plugin and update your alias file     *"
echo "        **********************************************************************"
sleep 6
init 4 && reboot ;;

 8 ) wget $WALES && unzip wales.zip && sleep 3 && cd wales && cp -f update.py /$VIRGIN && cp -f update_script.conf /$PROVIDER && 
clear
echo "            ************************************************************"
echo "            *          YOUR ITV REGION HAS BEEN SET TO:  WALES         *"
echo "            *  FUTURE UPDATES TO THE ALIAS FILE VIA PLUGIN NOW SORTED  *"
echo "            ************************************************************"
sleep 4
echo ""
echo "        **********************************************************************"
echo "        *                Your box will reboot in 6 seconds                   *"
echo "        *        Please see linuxsat-support.com for help & questions        *"
echo "        *    Remember to setup Crossepg plugin and update your alias file     *"
echo "        **********************************************************************"
sleep 6
init 4 && reboot ;;

 9 ) wget $WESTCOUNTRYSW && unzip westcountrysw.zip && sleep 3 && cd westcountrysw && cp -f update.py /$VIRGIN && cp -f update_script.conf /$PROVIDER && 
clear
echo "            ************************************************************"
echo "            *     YOUR ITV REGION HAS BEEN SET TO: WESTCOUNTRY SW      *"
echo "            *  FUTURE UPDATES TO THE ALIAS FILE VIA PLUGIN NOW SORTED  *"
echo "            ************************************************************"
sleep 4
echo ""
echo "        **********************************************************************"
echo "        *                Your box will reboot in 6 seconds                   *"
echo "        *        Please see linuxsat-support.com for help & questions        *"
echo "        *    Remember to setup Crossepg plugin and update your alias file     *"
echo "        **********************************************************************"
sleep 6
init 4 && reboot ;;


 10 ) wget $WESTCOUNTRYWEST && unzip westcountrywest.zip && sleep 3 && cd westcountrywest && cp -f update.py /$VIRGIN && cp -f update_script.conf /$PROVIDER && 
clear
echo "            ************************************************************"
echo "            *    YOUR ITV REGION HAS BEEN SET TO: WESTCOUNTRY WEST     *"
echo "            *  FUTURE UPDATES TO THE ALIAS FILE VIA PLUGIN NOW SORTED  *"
echo "            ************************************************************"
sleep 4
echo ""
echo "        **********************************************************************"
echo "        *                Your box will reboot in 6 seconds                   *"
echo "        *        Please see linuxsat-support.com for help & questions        *"
echo "        *    Remember to setup Crossepg plugin and update your alias file     *"
echo "        **********************************************************************"
sleep 6
init 4 && reboot ;;

 11 ) wget $YORKSHIRE && unzip yorkshire.zip && sleep 3 && cd yorkshire && cp -f update.py /$VIRGIN && cp -f update_script.conf /$PROVIDER && 
clear
echo "            ************************************************************"
echo "            *        YOUR ITV REGION HAS BEEN SET TO:  YORKSHIRE       *"
echo "            *  FUTURE UPDATES TO THE ALIAS FILE VIA PLUGIN NOW SORTED  *"
echo "            ************************************************************"
sleep 4
echo ""
echo "        **********************************************************************"
echo "        *                Your box will reboot in 6 seconds                   *"
echo "        *        Please see linuxsat-support.com for help & questions        *"
echo "        *    Remember to setup Crossepg plugin and update your alias file     *"
echo "        **********************************************************************"
sleep 6
init 4 && reboot ;;



 19 ) echo ""
echo "       ***********************************************************************"
echo "       *                                                                     *"
echo "       *       ITV regionals are not required for Scotland or N Ireland      *"
echo "       *          Those regions have there own versions STV and UTV          *"
echo "       *                                                                     *"
echo "       ***********************************************************************"
sleep 5
clear; exit 0 ;;



 
 
 
 20 ) clear; exit 1 ;;
 
 21 ) cd /usr/crossepg/scripts/virgin && ./update.py
 echo " updated alias file "
 sleep 5
 clear; exit 0 ;;
 
 22 ) init 4 && reboot ;;
esac

done

