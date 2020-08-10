# Panel SSH dan Installer SSH Debian 10


## Installation Configuration VPS for SSH Panel
1. copy and paste in your terminal/VPS and then run it
`wget https://raw.githubusercontent.com/raysdenni/serverforocs/master/server.sh`
2. Edit permission of file
`chmod +x server.sh`
3. Run this script for installing
`./server.sh`
4. Done

## Installation SSH and VPN on debian 10 (buster)

### Fitur-fitur Script
Berikut adalah fitur-fitur script ini :
OpenSSH, port : 22, 444
Dropbear, port : 80, 143
SSL, port : 443
Squid3, port : 8000, 8080 (limit to IP VPS)
Badvpn : badvpn-udpgw port 7200
Webmin : http://IPVPS:10000/
OpenVPN : TCP 1194 dan UDP 25000
Script menu : menampilkan daftar perintah yang tersedia
Script usernew : membuat akun SSH dan OpenVPN
Script trial : membuat akun trial SSH dan OpenVPN
Script hapus : menghapus akun SSH dan OpenVPN
Script cek : cek user login
Script member : cek daftar member SSH dan OpenVPN
Script speedtest : speedtest VPS
Script info : menampilkan informasi sistem
Script about : informasi tentang script auto install
VPS auto reboot tiap jam 12 malam


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
