class TelaInicialPage
  include Capybara::DSL

  def abrir_site
    visit "/"
    find('button[class="btn button btn--black js-term-bar-accept"]').click
  end

  def buscar_item(item)
    find('button[class="btn header__search-desktop--btn"]').click
    find("#smarthint-search-input").set item
    find('[class="js-category-name"]').click
  end
end
