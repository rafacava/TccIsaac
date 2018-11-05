require "application_system_test_case"

class TerciarioFatorsTest < ApplicationSystemTestCase
  setup do
    @terciario_fator = terciario_fators(:one)
  end

  test "visiting the index" do
    visit terciario_fators_url
    assert_selector "h1", text: "Terciario Fators"
  end

  test "creating a Terciario fator" do
    visit terciario_fators_url
    click_on "New Terciario Fator"

    fill_in "Nome", with: @terciario_fator.nome
    click_on "Create Terciario fator"

    assert_text "Terciario fator was successfully created"
    click_on "Back"
  end

  test "updating a Terciario fator" do
    visit terciario_fators_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @terciario_fator.nome
    click_on "Update Terciario fator"

    assert_text "Terciario fator was successfully updated"
    click_on "Back"
  end

  test "destroying a Terciario fator" do
    visit terciario_fators_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Terciario fator was successfully destroyed"
  end
end
