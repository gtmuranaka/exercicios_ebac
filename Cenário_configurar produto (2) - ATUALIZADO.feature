            #language: pt

            Funcionalidade: Configurar produto
            Como cliente EBAC-SHOP
            Quero configugurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Cenário: Emitir opção de escolha de cor, tamanho e quantidade
            Dado que eu acesse o produto escolhido
            Quando eu inserir o produto no carrinho
            Então deve emitir uma mensagem "escolher a cor", "escolher tamanho" e "escolher quantidade"

            Cenário: Permitir apenas 10 produtos no carrinho
            Dado que eu escolha 10 produtos
            Quando eu inserir 10 <produtos> no carrinho
            Então deve emitir uma mensagem "produto incluído com sucesso"

            Cenário: Limpar carrinho e voltar ao estado original
            Dado que acesse o carrinho
            Quando eu clicar no botão "limpar"
            Então deve emitir a mensagem "carrinho vazio"

            Esquema do Cenário: Permitir apenas 10 produtos no carrinho
            Quando eu selecionar 15 produtos
            Então deve emitir a mensagem "inválido"

            Exemplos:
            | produtos | quantidade | resultado                    |
            | jaqueta  | 10         | Produto incluído com sucesso |
            | Calça    | 13         | inválido                     |
            | camistea | 5          | Produto incluído com sucesso |
            | boné     | 20         | inválido                     |
