#!/bin/bash
sleep 1
clear
     #####    PROGAMING IS LIFE!
    #### _\_  ________
    ##=-[.].]| \      \
    #(    _\ |  |------|
     #   __| |  ||||||||
     #\  _/  |  ||||||||
  #.--'--'-. |  | ____ |
 #/ __      `|__|[o__o]|
#_(____nm_______ /____\____
sleep 1
cat <<!
 ____ ____ ____ ____
||F |||R |||U |||Z ||
||__|||__|||__|||__||
|/__\|/__\|/__\|/__\| V 1.0

Developer: Alonso

!
echo
Menu(){
sleep 1
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
echo -n -e "\e[32;5;1m[+] Qual a sua opção desejada ? \e[m"
read opcao
case $opcao in
	1) sh_Add;;
	2) sh_Ver;;
	*) echo;echo -e "\e[32;3;1m[!] Opção inválida\e[m";sleep 2;clear;Menu;;
esac
}
sh_Add(){
	echo
	sleep 1
	echo -n -e "\e[32;5;1m[+] Digite o nome do repositório que deseja adicionar: \e[m"
	read add
	echo "" | sudo tee -a /etc/apt/sources.list
	echo "# ADICIONADO POR FRUZ SCRIPT" | sudo tee -a /etc/apt/sources.list
	echo "$add" | sudo tee -a /etc/apt/sources.list
	sleep 1
	echo -e "\e[32;5;1m[*] Uma linha com o seu repositório foi adicionado ao arquivo source.list\e[m"
	clear
	echo -n -e "\e[32;5;1m[*] Digite o nome do software que deseja instalar: \e[m"
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
	echo -e "\e[32;5;1m[*] Diretórios Atuais!\e[m"
	echo
	cat /etc/apt/sources.list
	echo
	echo -n -e "\e[32;5;1m[+] Para continuar pressione [ENTER]\e[m"
	read pss
	clear
	Menu
}
Menu
