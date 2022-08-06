#!/bin/bash


echo  "iniciando o script do servidor.........................."

mkdir /publico
mkdir /ven
mkdir /sec
mkdir /adm

echo "criando os gropos......"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando os usuarios..."



useradd joao -m -s /bin/bash -c "joao da silva" -p $(openssl passwd senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -c "maria da silva" -p $(openssl passwd senha123) -G GRP_ADM
useradd carlos -m -s /bin/bash -c "carlos da silva" -p $(openssl passwd senha123) -G GRP_ADM


useradd debora -m -s /bin/bash -c "debora da cruz" -p $(openssl passwd senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -c "roberto da cruz" -p $(openssl passwd senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -c "sebastiana da cruz" -p $(openssl passwd senha123) -G GRP_VEN


useradd josefina -m -s /bin/bash -c "josefina de jesus" -p $(openssl passwd senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -c "rogerio de jesus" -p $(openssl passwd senha123) -G GRP_SEC
useradd amanda -m -s/bin/bash -c "amanda de jesus" -p $(openssl passwd senha123) -G GRP_SEC


echo "persmissoes nos diretorios"


chown root:GRP_ADM /adm
chown root:GRP_SEC /sec
chown root:GRP_VEN /ven

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "fim do script...."

