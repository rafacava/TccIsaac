require "application_system_test_case"

class DiagnosticosTest < ApplicationSystemTestCase
  setup do
    @diagnostico = diagnosticos(:one)
  end

  test "visiting the index" do
    visit diagnosticos_url
    assert_selector "h1", text: "Diagnosticos"
  end

  test "creating a Diagnostico" do
    visit diagnosticos_url
    click_on "New Diagnostico"

    fill_in "Nome", with: @diagnostico.nome
    fill_in "Principal Caracteristica", with: @diagnostico.principal_caracteristica_id
    fill_in "Principal Fator", with: @diagnostico.principal_fator_id
    fill_in "Secundaria Caracteristica", with: @diagnostico.secundaria_caracteristica_id
    fill_in "Secundario Fator", with: @diagnostico.secundario_fator_id
    fill_in "Terciaria Caracteristica", with: @diagnostico.terciaria_caracteristica_id
    fill_in "Terciario Fator", with: @diagnostico.terciario_fator_id
    click_on "Create Diagnostico"

    assert_text "Diagnostico was successfully created"
    click_on "Back"
  end

  test "updating a Diagnostico" do
    visit diagnosticos_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @diagnostico.nome
    fill_in "Principal Caracteristica", with: @diagnostico.principal_caracteristica_id
    fill_in "Principal Fator", with: @diagnostico.principal_fator_id
    fill_in "Secundaria Caracteristica", with: @diagnostico.secundaria_caracteristica_id
    fill_in "Secundario Fator", with: @diagnostico.secundario_fator_id
    fill_in "Terciaria Caracteristica", with: @diagnostico.terciaria_caracteristica_id
    fill_in "Terciario Fator", with: @diagnostico.terciario_fator_id
    click_on "Update Diagnostico"

    assert_text "Diagnostico was successfully updated"
    click_on "Back"
  end

  test "destroying a Diagnostico" do
    visit diagnosticos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Diagnostico was successfully destroyed"
  end
end
