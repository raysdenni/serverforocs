# Panel SSH dan Installer SSH Debian 10


## Installation Configuration VPS for SSH Panel
1. copy and paste in your terminal/VPS and then run it
`wget https://raw.githubusercontent.com/raysdenni/serverforocs/master/server.sh`
2. Edit permission of file
`chmod +x server.sh`
3. Run this script for installing
`./server.sh`
4. Done

## OCS Panel by BonScript
### OceanVPN OCS Panel For Debian 9 or Debian 10 Description
- OCS Panel Source Code by Hostingtemurah
- Panel base template by M4rshall
- Base template fix and bash installer implementation by Bon-chan
### Recommendations Spesification for your VPS:
* Your VPS/Instance must be freshly/newly Deployed
* Your VPS/Instance must have root access or superuser permission(run sudo su - to access root)
* Your VPS/Instance must be accessible through TCP Port 80
* Minimum VPS/Instance Specification:512MB RAM, 1vCPU or Shared 1vCPU
### For installation:
1. just run this script as super user 
`rm -f DebianOCS* && wget -q 'https://raw.githubusercontent.com/raysdenni/BonvScripts/master/DebianOCS-Panel' && chmod +x DebianOCS-Panel && ./DebianOCS-Panel`

Note sa mga Gcloud/AWS/Cloudsigma/Azure/Oraclecloud Users(or Any VPS/Instance na under admin/sudo account:
`sudo su -` first bago mag run ng script
### Some info about this script
1. ocs panel template: Bootstrap 4 Color Admin + Material Bootstrap 4(FatFree PHP Framework)
2. root directory ng panel: /home/panel/html
3. nginx config ng panel: /etc/nginx/conf.d/bonveio-panel.conf
4. nginx/mariadb version: default APT Stable package version for Debian
5. php version: 5.6
6. installed php modules: common,fpm,cli,mcrypt,curl,mysql,ssh2,json,mbstring and xml


## Installation SSH and VPN on debian 10 (buster)

### Fitur-fitur Script
Berikut adalah fitur-fitur script ini :
* OpenSSH, port : 22, 444
* Dropbear, port : 80, 143
* SSL, port : 443
* Squid3, port : 8000, 8080 (limit to IP VPS)
* Badvpn : badvpn-udpgw port 7200
* Webmin : http://IPVPS:10000/
* OpenVPN : TCP 1194 dan UDP 25000
* Script menu : menampilkan daftar perintah yang tersedia
* Script usernew : membuat akun SSH dan OpenVPN
* Script trial : membuat akun trial SSH dan OpenVPN
* Script hapus : menghapus akun SSH dan OpenVPN
* Script cek : cek user login
* Script member : cek daftar member SSH dan OpenVPN
* Script speedtest : speedtest VPS
* Script info : menampilkan informasi sistem
* Script about : informasi tentang script auto install
* VPS auto reboot tiap jam 12 malam


### Syarat
Seperti biasa, sebelum mengeksekusi script ini, pastikan bahwa VPS Anda masih fresh belum diinstall aplikasi apapun. Pastikan juga bahwa VPS Anda memiliki sistem operasi Debian 10 64 bit.

### Cara Install Script
Untuk mengeksekusi script ini berikut adalah langkah-langkah yang diperlukan :
1. Buka aplikasi Putty (Windows) atau JuiceSSH (Android)
2. Lakukan koneksi SSH ke VPS dengan user root
3. Download script dengan perintah
`wget https://github.com/raysdenni/serverforocs/raw/master/deb10.sh`
4. Ubah script menjadi executable dengan perintah
`chmod +x deb10.sh`
5. Eksekusi script dengan perintah
`./deb10.sh`

Proses instalasi script berjalan sekitar 3-5 menit.

Setelah proses instalasi script selesai, jangan lupa menjalankan perintah berikut
reboot
Setelah menjalankan perintah reboot, maka koneksi SSH ke VPS akan otomatis terputus.
Tunggu sekitar 1-3 menit atau lebih, kemudian lakukan koneksi SSH lagi ke VPS, menggunakan Putty/JuiceSSH, maka VPS sudah siap digunakan untuk membuat akun SSH dan OpenVPN, ditandai dengan munculnya tampilan selamat datang.

### Disable or Change Time for automatic reboot VPS
1. run `nano /etc/crontab`
2. Edit for bottom script of automatic reboot times
3. Save it
