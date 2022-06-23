---
FORMAT: 1A
HOST: http://www.google.com
---

# Sistemas Digitais: ULA de oito operações

## Integrantes
Diego Freitas\
Henrique Marques\
Pedro Henrique Teixeira

## Entradas e saídas
### Bits de seleção
<center>

|Pin|Bit|
|---|---|
| T9  | S2 |
| U8  | S1 |
| U10 | S0 |

</center>
	 
### Bits de saída
<center>

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

</center>

**OBS** : A comparação tem as sequintes saídas
- Z0 = GREATER
- Z1 = EQUAL
- Z2 = LOWER

## Operações
<center>

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

</center>

