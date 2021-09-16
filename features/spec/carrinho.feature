#language: en

@carrinho
Feature: Carrinho de compras
   
    Background: Produto adicionado
        Given que adiciono o "Cama Para Cachorros Zee.Bed Skull G" ao carinho

    #ZW-2
    @adição_com_sucesso
    Scenario: Adição do item pela tela inicial
    
    Then sistema exibe carrinho com o produto adicionado

    #ZW-23
    @remoção_com_unico_item
    Scenario: remoção de um item, tendo apenas um item no carrinho

    When clico no botão remover 
    Then sistema deve exibir mensagem "Seu carrinho está vazio."
    
    #ZW-24
    @cep_inválido
    Scenario: usuário insere cep inválido

    When quando insiro o cep "123"
    Then sistema deve exibir mensagem "Código postal inválido"