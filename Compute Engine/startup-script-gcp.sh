#! /bin/bash
apt update
apt -y install apache2

cat <<EOF > /var/www/html/index.html
<html><body><p>Hola Joan Amengual</p></body></html>
EOF
