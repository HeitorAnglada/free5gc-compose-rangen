#!/bin/bash

num_ue=$1
tot_ues=$2

# Iniciar o comando ./nr-gnb em segundo plano
./nr-gnb -c ./config/gnbcfg${num_ue}.yaml &

# Manter o script em execução para que o contêiner não seja encerrado
tail -f /dev/null