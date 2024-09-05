#!/bin/bash

data_atual=$(date +%d-%m-%Y)
horario_atual=$(date +%R)

echo "Iniciando Calculadora de IMC para $USER em $data_atual às $horario_atual a partir de $PWD.........."

python3 ~/projeto/calculadoraIMC.py

echo "Encerrando programa................. Pronto!"
