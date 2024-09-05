# Calculadora de IMC

O projeto consiste no código em Python para uma calculadora simples de índice de massa corporal (IMC) e um Shell Script (.sh) executável.

## Instruções para executar o Shell Script:

1. Mova tanto o [código](https://github.com/teruyagui/Calculadora-IMC/blob/main/calculadoraIMC.py) quanto o [executável](https://github.com/teruyagui/Calculadora-IMC/blob/main/calculadoraIMC.sh) para uma pasta dentro da rede de seu WSL (Subsistema Windows para Linux).
2. No terminal, certifique-se de que o arquivo executável possui as permissões necessárias, utilizando `ll` para visualizar o status atual do arquivo e `chmod +x calculadoraIMC.sh` para adicionar a permissão de execução, caso ainda não estivesse ativada.
3. Execute o programa utilizando o comando `./calculadoraIMC.sh`

## Explicando o código em Python

```
# Calculadora de IMC
nome = input('Insira seu nome: ')
idade = input('Insira sua idade: ')
altura = float(input('Insira sua altura (ex.: X.XX): '))
peso = float(input('Insira seu peso (ex.: X.XX): ' ))

IMC = peso / (altura * altura)
print('Seu IMC é: ', IMC)
```

1. As variáveis `nome, idade, altura e peso` utilizam o comando `input` para coletar os respectivos dados do usuário. A variável `IMC` contém a operação matemática `peso / altura²`, utilizando os valores previamente coletados. O comando `print` mostra o resultado da operação.

```
if IMC < 18.4:
    print('Atenção! Você pode estar abaixo do peso. Procure seu médico.')
elif IMC >= 18.5 and IMC <= 24.9:
    print('Parabéns! Você parece estar no peso ideal!')
elif IMC >= 25 and IMC <= 29.9:
    print('Cuidado! Você pode estar acima do peso. Procure seu médico.')
elif IMC >= 30 and IMC <= 39.9:
    print('Atenção! Você pode sofrer de obesidade. Procure seu médico.')
else:
    print('Alerta! Você pode sofrer de obesidade mórbida. Procure seu médico.')
```

2. Esta sessão utiliza as condicionais `if, elif e else` para exibir diferentes mensagens de acordo com o resultado obtido na operação da variável `IMC`. As mensagens atribuídas a cada valor foram decididas utilizando a tabela padrão de cálculo do IMC.

```
# Calculando a diferença
if IMC > 24.9:
  x = IMC - 24.9
  print('Idealmente, você deve perder cerca de', x, 'kg.')
elif IMC < 18.5:
  y = 18.5 - IMC
  print('Idealmente, você deve ganhar cerca de', y, 'kg.')
else:
  pass
```

3. Por fim, ainda utilizando as mesmas condicionais, duas novas operações são feitas para determinar quantos kg o usuário deveria perder de acordo com a tabela padrão de IMC. As variáveis `x e y` são determinadas ao comparar, com `< e >`, os resultados da sessão anterior com valores limítrofes de estágios do IMC, mostrando uma frase diferente para os dois valores. Caso o valor esteja dentro do dito "normal", o comando `pass` interrompe a ação e não mostra nada. 
