# Instalación
sudo apt update
sudo apt install vsftpd -y

# Reiniciar servicio
sudo systemctl restart vsftpd

# Verificar puerto
sudo ss -tulpn | grep :21

# Cliente FTP
ftp 192.168.50.3

# Cliente seguro FTPS
lftp -u vagrant 192.168.50.3

# Configuración FTPS en lftp
set ssl:verify-certificate no
set ftp:ssl-force true
set ftp:ssl-protect-data true

# Subir archivo
put prueba.txt