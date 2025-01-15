# Tabuleiro de Xadrez

Este projeto é um programa desenvolvido em Assembly que calcula o valor total das peças em um tabuleiro de xadrez 8x8. Cada peça possui um valor associado, e o programa percorre o tabuleiro somando os valores das peças e exibindo o total.

## Como Funciona

1. O programa representa o tabuleiro de xadrez como uma matriz 8x8 armazenada na seção `.data`.
2. Cada célula do tabuleiro pode conter uma peça de xadrez (peão, cavalo, bispo, torre, rainha, rei) ou estar vazia.
3. O programa percorre todas as células do tabuleiro:
   - Identifica a peça presente em cada célula.
   - Soma o valor correspondente ao acumulador.
   - Exibe o valor total ao final.
4. Caso uma célula contenha um valor inválido, o programa exibe uma mensagem de erro.

## Regras do Jogo

| Peça   | Valor |
|--------|-------|
| Peão   | 1     |
| Cavalo | 3     |
| Bispo  | 3     |
| Torre  | 5     |
| Rainha | 10    |
| Rei    | 50    |
| Vazio  | 0     |

## Requisitos

- **Simulador MIPS:** MARS ou SPIM para executar o código Assembly.
- **Conhecimento Básico em Assembly:** Para compilar, executar e entender o programa.

## Como Executar

1. **Abra o programa em um simulador MIPS (ex.: MARS ou SPIM):**
   - Carregue o arquivo `.asm` no simulador.
2. **Compile e Execute:**
   - Compile o código e inicie a execução.
3. **Visualize a Saída:**
   - O programa exibirá o valor total das peças do tabuleiro ou uma mensagem de erro caso encontre valores inválidos.

## Como Personalizar

- Para alterar o tabuleiro, edite a seção `.data` no código:
```assembly
$line1: .word $torre, $cavalo, $bispo, $rei, $rainha, $bispo, $cavalo, $torre
$line2: .word $peao, $peao, $peao, $peao, $peao, $peao, $peao, $peao
...
```

## Mensagens de Erro

Caso o programa encontre uma célula inválida no tabuleiro, ele exibirá a mensagem:
```
error!
```

## Observações

Este programa foi desenvolvido para fins educacionais e demonstra o uso de Assembly para resolver problemas relacionados a matrizes e lógica condicional. Sinta-se à vontade para modificá-lo e adaptá-lo às suas necessidades!