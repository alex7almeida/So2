#instalação do sanba

sudo apt-get update
sudo apt-get install samba
sudo smbpasswd -a dev_senior
sudo smbpasswd -a dev_junior
sudo mkdir -p /srv/samba/publico
sudo chown nobody:nogroup /srv/samba/publico
sudo chmod 777 /srv/samba/publico
sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.bkp
sudo nano /etc/samba/smb.conf

[Público]

comment = Compartilhamento Público de Arquivos
caminho = /srv/samba/publico
navegável = sim
gravável = sim
convidado ok = sim
lersomente = não
caminho = /srv/projetos
usuários válidos = @desenvolvedores
lersomente = não
navegável = sim

sudo systemctl reiniciar smbd
#ativo (correndo)

sudo systemctl reiniciar nmbd
testparm
