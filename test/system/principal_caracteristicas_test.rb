require "application_system_test_case"

class PrincipalCaracteristicasTest < ApplicationSystemTestCase
  setup do
    @principal_caracteristica = principal_caracteristicas(:one)
  end

  test "visiting the index" do
    visit principal_caracteristicas_url
    assert_selector "h1", text: "Principal Caracteristicas"
  end

  test "creating a Principal caracteristica" do
    visit principal_caracteristicas_url
    click_on "New Principal Caracteristica"

    fill_in "Nome", with: @principal_caracteristica.nome
    click_on "Create Principal caracteristica"

    assert_text "Principal caracteristica was successfully created"
    click_on "Back"
  end

  test "updating a Principal caracteristica" do
    visit principal_caracteristicas_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @principal_caracteristica.nome
    click_on "Update Principal caracteristica"

    assert_text "Principal caracteristica was successfully updated"
    click_on "Back"
  end

  test "destroying a Principal caracteristica" do
    visit principal_caracteristicas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Principal caracteristica was successfully destroyed"
  end
end
