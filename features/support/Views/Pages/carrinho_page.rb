class CarrinhoPage
  include Capybara::DSL

  def nome_produto
    find('a[id^="product-name"]')
  end

  def esperar_carregar
    click_button "Adicionar"
  end

  def remover_produto
    find('a[title="remover"]').click
  end

  def inserir_cep(cep)
    click_button "Calcular"
    find("#ship-postalCode").set cep
    click_button "Calcular"
  end
end
