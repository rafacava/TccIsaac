require "application_system_test_case"

class SecundarioFatorsTest < ApplicationSystemTestCase
  setup do
    @secundario_fator = secundario_fators(:one)
  end

  test "visiting the index" do
    visit secundario_fators_url
    assert_selector "h1", text: "Secundario Fators"
  end

  test "creating a Secundario fator" do
    visit secundario_fators_url
    click_on "New Secundario Fator"

    fill_in "Nome", with: @secundario_fator.nome
    click_on "Create Secundario fator"

    assert_text "Secundario fator was successfully created"
    click_on "Back"
  end

  test "updating a Secundario fator" do
    visit secundario_fators_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @secundario_fator.nome
    click_on "Update Secundario fator"

    assert_text "Secundario fator was successfully updated"
    click_on "Back"
  end

  test "destroying a Secundario fator" do
    visit secundario_fators_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Secundario fator was successfully destroyed"
  end
end
