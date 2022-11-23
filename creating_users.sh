#!/bin/bash

echo "criando grupos do sistema..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuários do sistema..."

useradd carlos -c "Carlos" -g GRP_ADM -s /bin/bash -m -p $(openssl passwd -crypt senha123)
useradd maria -c "Maria" -g GRP_ADM -s /bin/bash -m -p $(openssl passwd -crypt senha123)
useradd joao -c "João" -g GRP_ADM -s /bin/bash -m -p $(openssl passwd -crypt senha123)

useradd debora -c "Debora" -g GRP_VEN -s /bin/bash -m -p $(openssl passwd -crypt senha123)
useradd sebastiana -c "Sebastiana" -g GRP_VEN -s /bin/bash -m -p $(openssl passwd -crypt senha123)
useradd sebastiana -c "Roberto" -g GRP_VEN -s /bin/bash -m -p $(openssl passwd -crypt senha123)

useradd josefina -c "Josefina" -g GRP_SEC -s /bin/bash -m -p $(openssl passwd -crypt senha123)
useradd amanda -c "Amanda" -s GRP_SEC /bin/bash -m -p $(openssl passwd -crypt senha123)
useradd rogerio -c "Rogerio" -s GRP_SEC /bin/bash -m -p $(openssl passwd -crypt senha123)

echo "criando diretórios..."

mkdir /publico
mkdir /adm 
mkdir /ven 
mkdir /sec 

echo "definindo permissões do diretório..."
chmod 777 /publico/ 
chmod 770 /adm/ /ven/ /sec/
chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

echo "finalizando!"
