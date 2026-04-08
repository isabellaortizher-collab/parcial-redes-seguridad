# Reiniciar servicio DNS
sudo systemctl restart systemd-resolved

# Ver estado
resolvectl status

# Consultas DNS
resolvectl query google.com
resolvectl query facebook.com
resolvectl query youtube.com

# Prueba TLS
openssl s_client -connect 1.1.1.1:853

# DNS normal (sin TLS)
nslookup google.com

# Limpiar caché (opcional)
resolvectl flush-caches