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