#!/bin/bash

#Global vars
#Colors
_rcolor="\\033[1;31m" #Red color
_gcolor="\\033[1;32m" #Greencolor
_dcolor="\\033[0;39m" #Default color

#password

_pw=YOUR_PASSWORD_HERE

while true
do

read -e -p "Which region do you want to manage ? (BHS3|DE1|GRA3|SBG3|WAW1)
Region : " _regionchoice

        case $_regionchoice in
                BHS3|GRA3|SBG3|WAW1)
                        echo -e "Region choosed : ""$_gcolor""$_regionchoice""$_dcolor"
                        export OS_AUTH_URL=https://auth.cloud.ovh.net/v2.0/
                        export OS_TENANT_ID=f2969a7c92ff43f89b90462653e028cc
                        export OS_TENANT_NAME="1758120417097987"
                        export OS_USERNAME="N6paEwCrw4wT"
                        export OS_PASSWORD=$_pw
                        export OS_PASSWORD=3GJmTvuKMfe3na7dE3mYex8TBXsSGrqe
                        export OS_REGION_NAME="$_regionchoice"
                        if [ -z "$OS_REGION_NAME" ]; then unset OS_REGION_NAME; fi
                        break
                ;;
                *)
                        echo -e "$_rcolor""This region isn't valid""$_dcolor"
                        continue
                ;;
        esac
done
