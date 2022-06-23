# Sistemas Digitais: ULA de oito operações

## Descrição
O objetivo do deste projeto foi modelar, programar e testar uma Unidade Lógica e Aritmética, de quatro operações, usando os conhecimentos adquiridos em Circuitos Lógicos e aplicados nas aulas práticas no laboratório de Sistemas Digitais.

## Integrantes
Diego Freitas\
Henrique Marques\
Pedro Henrique Teixeira

## Entradas e saídas
### Bits de seleção
|Pin|Bit|
|---|---|
| T9  | S2 |
| U8  | S1 |
| U10 | S0 |
	 
### Bits de saída
|Pin|Bit|
|-|-|
| W21 | Z3 |
| Y22 | Z2 |
| V20 | Z1 |
| V19 | Z0 |
| U19 | Cout |
| U20 | NEGATIVO |
| T19 | OVERFLOW |
| R20 | ZERO |

**OBS** : A comparação tem as sequintes saídas
- Z0 = GREATER
- Z1 = EQUAL
- Z2 = LOWER

## Operações
|Seletor| Operação|
|---|---|
| `000` | Soma          |
| `001` | Substração    |
| `010` | Complemento-2     |
| `011` | Incremento    |
| `100` | AND            |
| `101` | OR   |
| `110` | Dobrar  |
| `111` | Comparar|

