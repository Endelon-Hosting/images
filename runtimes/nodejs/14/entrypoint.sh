#! /bin/bash
#
# Pterodactyl Stuff
TZ=${TZ:-UTC}
export TZ
INTERNAL_IP=$(ip route get 1 | awk '{print $(NF-2);exit}')
export INTERNAL_IP
#
# Reset the api key if set
API_KEY=`echo \"hahaha nein\"`
#
# Loading patches
echo "Applying patches"
curl -s https://storage.endelon-hosting.de/patches/general.sh | bash
#
# Debug print the nodejs version for the image
echo "NodeJS Version: 14"
#
# Parse the startup
PARSED=$(echo -e ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')
printf "\033[1m\033[33mcontainer@server~ \033[0m%s\n" "$PARSED"
eval ${PARSED}