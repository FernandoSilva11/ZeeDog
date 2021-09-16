class ProdutoPage
  include Capybara::DSL

  def selecionar_tamanho_g
    find('label[class="js-size-label  "]').click
  end

  def adicionar_ao_carrinho
    click_button "Adicionar ao carrinho"
    click_link "Finalizar compra"
  end
end
