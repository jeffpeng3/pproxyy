#!/bin/ash

PROXY_ADDR="${PROXY_ADDR}"
USERNAME="${USERNAME}"
PASSWORD="${PASSWORD}"

echo "遠端位址: $PROXY_ADDR"
echo "Username: $USERNAME"
echo "Password: $PASSWORD"

cp template.yaml gost.yaml

sed -i "s/<UNAME>/$USERNAME/g" gost.yaml
sed -i "s/<PASSWORD>/$PASSWORD/g" gost.yaml
sed -i "s/<PROXY_ADDR>/$PROXY_ADDR/g" gost.yaml

gost