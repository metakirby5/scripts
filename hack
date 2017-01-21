#!/bin/bash
 

if [ -z $1 ]
then
        echo -e "Please use the script along with a valid website as an argument.\nexample: ./$0 www.google.com\nDo not use http:// or trailing /, DOMAIN ONLY."
exit 1
fi

dot () {
        for ((i = 0; i < $1; i++)); do echo -n "."; sleep 0.04; done; echo -e '[\033[00;32mCOMPLETE\033[00;0m]';sleep 0.6
}
echo -n "Enumerating Target"
dot 40
echo -e " [+] Host: $1\n [+] IPv4: 192.168.13.37"
echo -n "Opening SOCK5 ports on infected hosts"
dot 21
echo " [+] SSL entry point on 127.0.0.1:1337"
echo -n "Chaining proxies"
dot 42
echo ' [+] 7/7 proxies chained {BEL>AUS>JAP>CHI>NOR>FIN>UKR}'
echo -n "Launching port knocking sequence"
dot 26
echo " [+] Knock on TCP<143,993,587,456,25,587,993,80>"
echo -n "Sending PCAP datagrams for fragmentation overlap"
dot 10
echo " [+] Stack override ***** w00t w00t g0t r00t!"
echo -en '\n['
for i in $(seq 1 65); do echo -n "="; sleep 0.01; done
echo -e '>]\n'
sleep 0.5
echo -n "root@$1:~# "
sleep 60
echo ""
exit 0
