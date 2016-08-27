Feature: ahorcado

Scenario: Usuario inicia el juego y ve la longitud de palabra
Given Pagina inicial
Then Debo ver longitud de palabra 8

Scenario: Usuario realiza intento y visualiza resultado
Given Pagina inicial
When el usuario ingresa "letra" con "a"
And acciona "confirmar"
Then visualiza "acerto"