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
            Então deve emitir uma mensagem "usuário validado"

            Cenário: Senha ou Login inválidos
            Quando eu digitar o usuário "gustavo@ebac.com.br"
            E a senha "gt123"
            Então deve exibir uma mensagem de alerta "senha inválida"

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "gustavo.97@ebac.com.br"
            E a senha "gt@123"
            Então deve exibir uma mensagem de alerta "usuário inexistente"

            Exemplos:
            | Login                  | Senha  | Resultado           |
            | gustavo@ebac.com.br    | gt@123 | usuário validado    |
            | gustavo@ebac.com.br    | gt123  | senha inválida      |
            | gustavo.97@ebac.com.br | gt@123 | usuário inexistente |
