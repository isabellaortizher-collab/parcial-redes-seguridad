# 🖧 Parcial Redes Seguridad

## 📌 Descripción
En este proyecto se configuraron y validaron servicios de red en Linux utilizando máquinas virtuales con Vagrant. Se implementaron mecanismos de seguridad como firewall (UFW), FTP seguro (FTPS) y DNS over TLS (DoT).

---

## 🖥️ Entorno

- Servidor: 192.168.50.3  
- Cliente: 192.168.50.2  
- Sistema operativo: Ubuntu 22.04  

---

## 🔥 1. Firewall (UFW)

Se configuró el firewall para controlar el acceso a los servicios:

- Denegar conexiones entrantes
- Permitir conexiones salientes
- Permitir:
  - SSH (22)
  - FTP (21)
  - Puertos pasivos (50000–50010)

También se realizaron pruebas bloqueando y habilitando servicios.

---

## 📂 2. FTP Seguro (FTPS)

Se configuró el servidor FTP con cifrado TLS usando vsftpd.

### Pruebas realizadas:
- Conexión FTP normal (bloqueada o sin cifrado)
- Conexión FTPS usando lftp
- Subida de archivo al servidor

---

## 🌐 3. DNS over TLS (DoT)

Se configuró el cliente para usar DNS seguro.

### Configuración:
- DNS: 1.1.1.1, 8.8.8.8  
- FallbackDNS: 9.9.9.9  
- DNSOverTLS: yes  

---

## 🔍 Verificación

Se verificó la configuración con:

- resolvectl status  
- resolvectl query  

---

## 🔐 Capturas de red

Se analizaron paquetes con Wireshark:

- Puerto 853 → DNS cifrado (TLS)  
- Puerto 53 → DNS sin cifrar  

---

## ⚖️ Comparación

| Tipo | Puerto | Seguridad |
|------|--------|-----------|
| DNS normal | 53 | ❌ No cifrado |
| DNS over TLS | 853 | ✅ Cifrado |

---

## 📸 Evidencias

Se incluyen capturas de:

- Configuración DNS
- Estado del servicio
- Consultas DNS
- Wireshark (puerto 53 y 853)

---

## 🎯 Conclusión

Se logró implementar seguridad en los servicios de red mediante el uso de FTPS, firewall y DNS over TLS, evidenciando la diferencia entre tráfico cifrado y no cifrado.
