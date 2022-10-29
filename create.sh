#!/bin/bash

# Criar pastas
mkdir public adm ven sec

# Criar grupos
echo "Criando grupos de usuarios..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Criar ususrios
echo "Criando usuarios..."
useradd carlos -c "Adm Carlos" -m -s /bin/bash -g GRP_ADM -p $(openssl passwd -6 senha123)
useradd maria  -c "Adm Maria" -m -s /bin/bash -g GRP_ADM -p $(openssl passwd -6 senha123)
useradd joao -c "Adm Joao" -m -s /bin/bash -g GRP_ADM -p $(openssl passwd -6 senha123)
useradd debora -c "Ven Debora" -m -s /bin/bash -g GRP_VEN -p $(openssl passwd -6 senha123)
useradd sebastiana -c "Ven Sebastiana" -m -s /bin/bash -g GRP_VEN -p $(openssl passwd -6 senha123)
useradd roberto -c "Ven Roberto" -m -s /bin/bash -g GRP_VEN -p $(openssl passwd -6 senha123)
useradd josefina -c "Sec Josefina" -m -s /bin/bash -g GRP_SEC -p $(openssl passwd -6 senha123)
useradd amanda -c "Sec Amanda" -m -s /bin/bash -g GRP_SEC -p $(openssl passwd -6 senha123)
useradd rogerio -c "Sec Rogerio" -m -s /bin/bash -g GRP_SEC -p $(openssl passwd -6 senha123)

#definindo perfil de acesso as pastas
chmod 777 /public
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
