Before do
  @carrinho_page = CarrinhoPage.new
  @tela_inicial_page = TelaInicialPage.new
  @produto_page = ProdutoPage.new
end

Given("que adiciono o {string} ao carinho") do |item|
  @item = item
  @tela_inicial_page.abrir_site
  @tela_inicial_page.buscar_item(item)
  @produto_page.selecionar_tamanho_g
  @produto_page.adicionar_ao_carrinho
end

When("clico no botão remover") do
  @carrinho_page.remover_produto
end

When("quando insiro o cep {string}") do |cep|
  @carrinho_page.inserir_cep(cep)
end

Then("sistema deve exibir mensagem {string}") do |mensagem|
  expect(page).to have_text mensagem
end

Then("sistema exibe carrinho com o produto adicionado") do
  @carrinho_page.esperar_carregar
  expect(@carrinho_page.nome_produto.text).to have_content @item
end
