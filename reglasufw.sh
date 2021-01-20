echo "Creando reglas para ssh"
ufw allow 22022
echo "Creando reglas para cloudflare"
ufw default deny incoming
ufw default allow outgoing
ufw default deny incoming
ufw allow from 173.245.48.0/20
ufw allow from 103.21.244.0/22
ufw allow from 103.22.200.0/22
ufw allow from 103.31.4.0/22
ufw allow from 141.101.64.0/18
ufw allow from 108.162.192.0/18
ufw allow from 190.93.240.0/20
ufw allow from 188.114.96.0/20
ufw allow from 197.234.240.0/22
ufw allow from 198.41.128.0/17
ufw allow from 162.158.0.0/15
ufw allow from 104.16.0.0/12
ufw allow from 172.64.0.0/13
ufw allow from 131.0.72.0/22
ufw allow from 2400:cb00::/32
ufw allow from 2803:f800::/32
ufw allow from 2606:4700::/32
ufw allow from 2405:b500::/32
ufw allow from 2405:8100::/32
ufw allow from 2a06:98c0::/29
ufw allow from 2c0f:f248::/32
echo "Activando Ufw"
ufw enable
ufw status

