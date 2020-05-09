#!/bin/bash

while read list
do
sudo groupadd "$list"
passw=$(openssl rand -base64 14)
passh=$(openssl passwd -6 -salt xyz $passw)
sudo useradd -g "$list" -p $passh -s /bin/bash -d /home/$list -m $list
cd usrpswds
echo "$list - $passw" > $list-login-password.txt
cd ..
done < users.txt

exit 0
