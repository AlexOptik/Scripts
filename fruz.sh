#!/bin/bash
clear
cat <<!
 ____ ____ ____ ____ 
||F |||R |||U |||Z ||
||__|||__|||__|||__||
|/__\|/__\|/__\|/__\| V 1.0

Developer: Alex Optik
!
echo
Menu(){
sleep 2
cat <<!
==================================
|                                |
|  -> Escolha a sua opção <-     |
|                                |
==================================
!
sleep 1
cat <<!
==================================
|                                |
| 1) Adicionar Repositório       |
| 2) Ver Repositórios            |
|                                |
==================================
!
echo
echo -n -e "\e[32;3;1m [+] Qual a sua opção desejada ? \e[m"
read opcao
case $opcao in
	1) sh_Add;;
	2) sh_Ver;;
	*) echo;echo "[!] Opção inválida";sleep 2;clear;Menu;;
esac
}
sh_Add(){
	echo
	sleep 1
	echo -n "[+] Digite o nome do repositório que deseja adicionar: "
	read add
	echo "" | sudo tee -a /etc/apt/sources.list
	echo "# ADICIONADO POR FRUZ SCRIPT" | sudo tee -a /etc/apt/sources.list
	echo "$add" | sudo tee -a /etc/apt/sources.list
	sleep 1
	echo "[*] Uma linha com o seu repositório foi adicionado ao arquivo source.list"
	cat /etc/apt/sources.list
	sleep 2
	sleep 1
	clear
	echo -n "[*] Digite o nome do software que deseja instalar: "
	read soft
	sleep 1
	sudo apt-get install $soft
	sleep 1
	clear
	Menu
}
sh_Ver(){
	clear 
	sleep 1
	echo "[*] Diretórios Atuais!"
	echo	
	cat /etc/apt/sources.list
	echo	
	echo -n "Para continuar pressione [ENTER]"
	read pss
	clear
	Menu
}
Menu
