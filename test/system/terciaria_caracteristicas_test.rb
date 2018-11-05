require "application_system_test_case"

class TerciariaCaracteristicasTest < ApplicationSystemTestCase
  setup do
    @terciaria_caracteristica = terciaria_caracteristicas(:one)
  end

  test "visiting the index" do
    visit terciaria_caracteristicas_url
    assert_selector "h1", text: "Terciaria Caracteristicas"
  end

  test "creating a Terciaria caracteristica" do
    visit terciaria_caracteristicas_url
    click_on "New Terciaria Caracteristica"

    fill_in "Nome", with: @terciaria_caracteristica.nome
    click_on "Create Terciaria caracteristica"

    assert_text "Terciaria caracteristica was successfully created"
    click_on "Back"
  end

  test "updating a Terciaria caracteristica" do
    visit terciaria_caracteristicas_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @terciaria_caracteristica.nome
    click_on "Update Terciaria caracteristica"

    assert_text "Terciaria caracteristica was successfully updated"
    click_on "Back"
  end

  test "destroying a Terciaria caracteristica" do
    visit terciaria_caracteristicas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Terciaria caracteristica was successfully destroyed"
  end
end
