#!/bin/bash

set -euo pipefail

if ! command -v nmap >/dev/null 2>&1 ; then
  echo " please install nmap first run (sudo apt install nmap)"
exit 1 
fi
menu () {
  echo "____________________________"
  echo " nmap  Network Scanner "
  echo "_____________________________"


  echo " 1) Stealth (Full) scan"
  echo " 2) Version scan"
  echo " 3) Script vuln scan "
  echo " 4) OS Dedection scan"
  echo " 5) OS Gusessing sacan"
  echo " 6) Port scan (put sepcify port Example command) (IP address-P23 , 80 or 1-80 )" 
  echo " 7) Scan UDP ports"
  echo " 8) Scan TCP ports"
  echo " 9) Find IP address"
  echo " 10) custom (manual) scan"
  echo " 11) for more information (help)"
  echo " 12) clear screen"
  echo " 13) Exit "
  echo " __________________XXX__________________________"

}
while true; do
menu   
read -rp " Enter Your Option [1-13]:" opt
  case "$opt" in 
    1|2|3|4|5|6|7|8|9|10)
read -rp "Enter you Target IP (OR) Host name:" target
if ["$target"]; then
  echo " Target iP is required ,try again"

continue 
fi

case $opt in
  1) echo " Running stealth scan (-sS) on $target" ; sudo nmap -sS   "$target";;
  2) echo " Running version scan (-sV) on $target" ; sudo nmap -sV   "$targe"t ;;
  3) echo " Running script scan (--script=vuln) on $target" ; sudo nmap --script=vuln   $target;;
  4) echo " Running OS dedection scan (- sO)on $target" ; sudo nmap -O "$target" ;;
  5) echo " Running OS guessing scan (-O --osscan-guess)on $target "; sudo nmap -O --osscan-guess $target ;;
  6) echo " Running port scan(only specifed port exam:-p22 53 80 8080 (-p))on $target"; sudo nmap -P "$target";;
  7) echo " Scanning UDP ports on $target"; sudo nmap -sU $target ;;
  8) echo " Scanning TCP ports on $target "; sudo nmap -sT $target ;;
  9) echo " Find IP address on $target "; sudo nslookup $target ;; 
  10)echo " Customized  your scanning $target"; sudo nmap $target ;;
  

esac
;;
  
11) 
  echo "(for practical info) https://www.geeksforgeeks.org/ethical-hacking/nmap-cheat-sheet/+$"
  echo "-----------------------------------------------------------------------------------------"
  sudo nmap --help 
  exit 0
  
;;

 12) clear  
  ;;

13) echo "bye !! Happy Holloween!"
  exit 
  ;;

*)

  echo "invalid option choose [1-13]"
  
;;

esac
done
