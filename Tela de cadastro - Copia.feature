#language: pt

Funcionalidade: Tela de cadastro
Como cliente EBAC-SHOP
Quero concluir meu cadastro
Para finalizar minha compra

Contexto:
Dado que eu acesse a tela de cadastro

Cenário: Cadastrar dados obrigatórios
Quando eu preencher todos os campos obrigatórios
Então deve exibir uma mensagem "cadastro realizado com sucesso"

Cenário: Não permitir cadastro de e-mail com formato inválido
Quando eu preencher o campo e-mail com o endereço "gustavo.97gmail.com"
Então deve exibir uma mensagem "e-mail inválido"

Cenário: Tela de cadastro com campos vazios
Quando eu finalizar o cadastro com campos vazios
Então deve exibir uma mensagem "cadastro inválido"

