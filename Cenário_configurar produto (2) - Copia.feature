            #language: pt

            Funcionalidade: Configurar produto
            Como cliente EBAC-SHOP
            Quero configugurar meu <produto> de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Cenário: Seleção de cor, tamanho e quantidade
            Dado que eu acesse o <produto> escolhido
            Quando eu inserir o <produto> no carrinho
            Então deve solicitar a cor, tamanho e quantidade

            Cenário: Permitir apenas 10 produtos por venda
            Dado que eu escolha 10 <produtos>
            Quando eu inserir 15 <produtos> no carrinho
            Então deve autorizar somente 10 <produtos> por venda

            Cenário: Voltar ao estado original
            Dado que acesse o carrinho
            Quando eu clicar no botão "limpar"
            Então deve voltar ao estado original

            Esquema do Cenário: Permitir apenas 10 produtos por venda
            Quando eu selecionar 15 <produtos>
            Então deve inserir somente 10 <produtos>

            Exemplos:
            | produto  | quantidade | resultado |
            | jaqueta  | 10         | válido    |
            | Calça    | 13         | inválido  |
            | camistea | 5          | válido    |
            | boné     | 20         | inválido  |
