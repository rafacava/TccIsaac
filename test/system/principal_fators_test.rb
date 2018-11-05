require "application_system_test_case"

class PrincipalFatorsTest < ApplicationSystemTestCase
  setup do
    @principal_fator = principal_fators(:one)
  end

  test "visiting the index" do
    visit principal_fators_url
    assert_selector "h1", text: "Principal Fators"
  end

  test "creating a Principal fator" do
    visit principal_fators_url
    click_on "New Principal Fator"

    fill_in "Nome", with: @principal_fator.nome
    click_on "Create Principal fator"

    assert_text "Principal fator was successfully created"
    click_on "Back"
  end

  test "updating a Principal fator" do
    visit principal_fators_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @principal_fator.nome
    click_on "Update Principal fator"

    assert_text "Principal fator was successfully updated"
    click_on "Back"
  end

  test "destroying a Principal fator" do
    visit principal_fators_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Principal fator was successfully destroyed"
  end
end
