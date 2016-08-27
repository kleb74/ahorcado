Feature: ahorcado

Scenario: Usuario inicia el juego y ve la longitud de palabra
Given Pagina inicial
Then Debo ver longitud de palabra 8
And debo ver los 8 casilleros de las letras

Scenario: Usuario realiza intento y visualiza resultado
Given Pagina inicial
When el usuario ingresa "letra" con "a"
And acciona "confirmar"
Then visualiza "acerto"
And visualiza la letra "a" dentro de las letras utilizadas

Scenario: Usuario realiza intento y visualiza aciertos en casilleros
Given Pagina inicial
When el usuario ingresa "letra" con "a"
And acciona "confirmar"
Then visualiza la letra "a" en los casilleros acertados

Scenario: Usuario gana
Given Pagina inicial
When el usuario ingresa "letra" con "a"
And acciona "confirmar"
And el usuario ingresa "letra" con "h"
And acciona "confirmar"
And el usuario ingresa "letra" con "o"
And acciona "confirmar"
And el usuario ingresa "letra" con "r"
And acciona "confirmar"
And el usuario ingresa "letra" con "c"
And acciona "confirmar"
And el usuario ingresa "letra" con "d"
And acciona "confirmar"
Then visualiza "Gano"

Scenario: Usuario visualiza 6 vidas restantes
Given Pagina inicial
Then visualiza "6 vidas restantes"