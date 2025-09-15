*Parte 1: Instalação do Servidor OpenSSH

sudo apt-get update sudo apt-get install openssh-server
sudo systenctl status ssh

Active: active (Running) since Fri 2025-09-12 14:47:12 -03; 7ain ago
Active: inactive (dead)

*Parte 2: Acesso Inicial (Validação)

sudo Lucas@10.0.2.15
*Parte 3: Configuração de Segurança
sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bkp
sudo nano /etc/ssh/sshd_config
port 2244
PermitRootLogin no

*Parte 4: Teste e Validação Final

sudo systenct restart ssh

ssh Lucas@10.0.2.15 -p 2244
ssh: connect to host 10.0.2.15 port 2244: Connection refused

ssh root@10.0.2.15 -p 2244
ssh: connect to host 10.0.2.15 port 2244: Connection refused
