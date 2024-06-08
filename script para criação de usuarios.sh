#!/bin/bash

echo "Criando diretórios. /.../..."

mkdir /publico
mkdir /adm
mkdir /vem
mkdir /sec

echo "Criando grupos de usuários. /.../..."

groupadd GRP_ADM
groupadd GRP_VEM
groupadd GRP_SEC

echo " Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt 2024) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt 2024) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt 2024) -G GRP_ADM
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt 2024)-G GRP_VEM
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt 2024) -G GRP_VEM
useradd reberto -m -s /bin/bash -p $(openssl passwd -crypt 2024) -G GRP_VEM
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt 2024) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt 2024) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt 2024) -G GRP_SEC

echo "Especificando permissões dos diretórios..."
chown root:GRP_ADM /adm
chown root:GRP_VEM /vem
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /vem
chmod 770 /sec
chmod 770 /publico
