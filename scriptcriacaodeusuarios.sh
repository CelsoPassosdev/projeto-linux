#!/bin/bash

echo "Criando diretórios......"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários......."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários do grupo ADM..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt 2024) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt 2024) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt 2024) -G GRP_ADM

echo "Criando usuarios do grupo VEN..."

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt 2024)-G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt 2024) -G GRP_VEN
useradd reberto -m -s /bin/bash -p $(openssl passwd -crypt 2024) -G GRP_VEN

echo "Criando usuarios do grupo SEC"

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt 2024) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt 2024) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt 2024) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Todos usuarios, grupos e pastas foram criados com sucesso"
