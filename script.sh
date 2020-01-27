#!/bin/bash

#variavel que armazena o valor de pid.txt
PID=$(cat pid.txt)

#variável que busca o PID do processo em python
VALIDACAO=$(ps aux | grep python 'script.py')

#loop que verifica existência de pid
#OBS: não consegui validar de uma forma apropriada. Coloquei mais detalhes no arquivo readme.
for ((loop=1;loop>0;loop++));do
    #if [ $PID > "0" ] --> seria uma alternativa fraca de validação
    if [[ $PID = $VALIDACAO ]]
    then
        echo "1: It is alive"
    else
        echo "1: It is dead"
        #ativando o arquivo em python caso a validação retorne falso
        python script.py
    fi
    exit
done

exit
