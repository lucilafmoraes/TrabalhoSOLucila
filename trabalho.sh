#!/bin/bash

//1
sudo groupadd aluno
sudo groupadd professor
sudo groupadd gerente
//2
sudo mkdir -p /srv
sudo chown root:gerente /srv
sudo chmod 750 /srv
//3
sudo mkdir /srv/alunos
sudo mkdir /srv/professores
sudo chown root:aluno /srv/alunos
sudo chown root:professor /srv/professores
//4
sudo chmod 750 /srv
sudo chmod 770 /srv/alunos
sudo chmod 770 /srv/professores
//5
sudo useradd -m -d /srv/professores/Bruno -g professor --gecos "" --disabled-login Bruno
//6
sudo usermod -aG gerente Bruno
//7
sudo useradd -m -d /srv/alunos/Joao -g aluno --gecos "" --disabled-login Joao
sudo useradd -m -d /srv/alunos/Maria -g aluno --gecos "" --disabled-login Maria
//8
sudo chage -E 2024-12-31 Joao
sudo chage -E 2024-12-31 Maria
sudo chage -M 90 Joao
sudo chage -M 90 Maria

