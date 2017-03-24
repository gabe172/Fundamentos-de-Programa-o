#!/bin/bash
USER=vagrant
PASSWD=vagrant
SAIR=nao


clear
while [ $SAIR != "SAI" ]; do
echo
echo "Debian GNU/Linux 8 jessie tty1"
echo
echo -n "jessie login: "
read LOGIN
echo -n "Password: "
read -s SENHA

QNT=0
while (( $QNT <= 5 )); do
if [ $LOGIN == $USER ]; then
	if [ $PASSWD == $SENHA ]; then
		sleep 3
		echo
		echo  "BOA VC PASSOU"

	else
		let (( $QNT+1 ))
		sleep 3
		echo
		echo  "Login incorrect"

	fi
else
		sleep 3
		echo
		echo "Login incorrect"

fi

done

