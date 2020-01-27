# Case Embarcados

Este case é constituído de duas partes:
- A primeira é um código em shell, de preferência rodando em um terminal unix (linux ou macOs), 
- e o segundo um script em python3.

> Instruções detalhadas foram passadas por e-mail.

## Diferenças entre o modelo conceitual e a execução
- O processo em python executa satisfatóriamente. Gera um arquivo em txt pra armazenar o PID do processo e esse número é sobrescrito a cada nova execução.

- Já o processo em shell script consegue ler a informação do txt e executar o processo em python. 
No entanto, parte do desafio é validar com sucesso a seguinte tarefa: 
> "verificar se existe um programa em python3 ativo com o pid (id de processo) lido deste arquivo(em txt)."

Para este problema, usei como estratégia a comparação entre **PID impresso no txt** pelo processo em python e o **PID indentificado pelo shell script** do próprio código em python.

O processo consegue trazer o PID do script em python, mas ao comparar as duas variáveis de PID, não consegue identificar situações de igualdade. Logo, nunca retorna true.

Como consequência, o processo executa novamente o script.py, cria um novo PID, entra no loop, retorna false... etc.
Para ações futuras, é necessário revisitar essa validação.