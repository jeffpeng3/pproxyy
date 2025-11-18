#!/bin/ash

PROXY_ADDR="${PROXY_ADDR}"
USERNAME="${USERNAME}"
PASSWORD="${PASSWORD}"

echo "遠端位址: $PROXY_ADDR"
echo "Username: $USERNAME"
echo "Password: $PASSWORD"

s=""
for port in $(seq 8080 8087); do
    echo "添加 gost 實例在端口 $port"
    s="$s -L http://$USERNAME:$PASSWORD@0.0.0.0:$port -F http://$PROXY_ADDR:$port"
done
echo /bin/gost $s

/bin/gost $s
