# importando funções para trabalhar com pid e tempo
import os
import time

# indentificando o pid 
pid = str(os.getpid()) 

# abrindo o arquivo pid e escrevendo no mesmo arquivo 
# OBS: a cada nova execução, o pid está sobrescrevendo
with open('pid.txt', 'w', newline='') as arquivo:
    arquivo.write(pid)

# loop 3x com tempo de 2 segundos entre as interações
count = 0
start = time.time()
while (count < 3):
    count = count + 1
    time.sleep(2)  
    print('2: I am alive!')
else: 
    time.sleep(2) 
    print('2: I gonna die now, bye!')
