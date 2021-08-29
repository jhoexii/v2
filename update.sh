#!/bin/bash
#set localtime
ln -fs /usr/share/zoneinfo/Asia/Manila /etc/localtime
# Terminal Color
RED='\033[01;31m';
RESET='\033[0m';
GREEN='\033[01;32m';
WHITE='\033[01;37m';
YELLOW='\033[00;33m';
#Database Details
dbhost='172.104.185.189';
dbuser='bluecor1_pro';
dbpass='bluecor1_pro1';
dbname='bluecor1_pro';
dbport='3306';

cat << EOF > /etc/openvpn/script/config.sh
#!/bin/bash
##Dababase Server
HOST='$dbhost'
USER='$dbuser'
PASS='$dbpass'
DB='$dbname'
PORT='$dbport'
EOF
bash vpn
echo -e "$GREEN    OpenVPN And SSH Successfully Activated$RESET"
echo "";
