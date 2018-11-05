require "application_system_test_case"

class SecundariaCaracteristicasTest < ApplicationSystemTestCase
  setup do
    @secundaria_caracteristica = secundaria_caracteristicas(:one)
  end

  test "visiting the index" do
    visit secundaria_caracteristicas_url
    assert_selector "h1", text: "Secundaria Caracteristicas"
  end

  test "creating a Secundaria caracteristica" do
    visit secundaria_caracteristicas_url
    click_on "New Secundaria Caracteristica"

    fill_in "Nome", with: @secundaria_caracteristica.nome
    click_on "Create Secundaria caracteristica"

    assert_text "Secundaria caracteristica was successfully created"
    click_on "Back"
  end

  test "updating a Secundaria caracteristica" do
    visit secundaria_caracteristicas_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @secundaria_caracteristica.nome
    click_on "Update Secundaria caracteristica"

    assert_text "Secundaria caracteristica was successfully updated"
    click_on "Back"
  end

  test "destroying a Secundaria caracteristica" do
    visit secundaria_caracteristicas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Secundaria caracteristica was successfully destroyed"
  end
end
