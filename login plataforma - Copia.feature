#language: pt

Funcionalidade: Login na plataforma
Como cliente EBAC-SHOP
Quero fazer o login na plataforma
Para viazualizar meus pedidos

Conexto:
Dado que eu acesse a página de autenticação da loja EBAC

Cenário: Inserir dados válidos e direcionar para a tela de checkout
Quando eu digitar o usuário "gustavo@ebac.com.br"
E a senha "gt@123"
Então deve direcionar para a tela de checkout

Cenário: Usuário inexistente
Quando eu digitar o usuário "gustavo@ebac.com.br"
E a senha "gt123"
Então deve exibir uma mensagem de alerta "senha inválida"

Cenário: Usuário inexistente
Quando eu digitar o usuário "gustavo.97@ebac.com.br"
E a senha "gt@123"
Então deve exibir uma mensagem de alerta "usuário inexistente"

