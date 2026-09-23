#! /bin/bash

apt update
apt -y install apache2 curl

INSTANCE_NAME=$(curl -H "Metadata-Flavor: Google" http://metadata.google.internal/computeMetadata/v1/instance/name)

INSTANCE_IP=$(curl -H "Metadata-Flavor: Google" http://metadata.google.internal/computeMetadata/v1/instance/network-interfaces/0/ip)

cat <<EOF > /var/www/html/index.html
<html>
<body>
<h1>Hola Joan Amengual</h1>
<p>Instancia: $INSTANCE_NAME</p>
<p>IP interna: $INSTANCE_IP</p>
</body>
</html>
EOF