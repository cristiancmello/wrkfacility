wsl --import Ubuntu-20.04 .\data\distros\ubuntu2004 .\data\distros\ubuntu2004\rootfs.v1_0_0.tar
wsl -d Ubuntu-20.04 -u root -- bash -c "echo -e \"[automount]\nenabled=false\nroot=//wsl.localhost/Ubuntu-20.04/home/workspace\n[user]\ndefault=workspace\" >> /etc/wsl.conf"
wsl --shutdown