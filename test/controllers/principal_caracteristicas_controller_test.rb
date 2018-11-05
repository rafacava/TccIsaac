require 'test_helper'

class PrincipalCaracteristicasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @principal_caracteristica = principal_caracteristicas(:one)
  end

  test "should get index" do
    get principal_caracteristicas_url
    assert_response :success
  end

  test "should get new" do
    get new_principal_caracteristica_url
    assert_response :success
  end

  test "should create principal_caracteristica" do
    assert_difference('PrincipalCaracteristica.count') do
      post principal_caracteristicas_url, params: { principal_caracteristica: { nome: @principal_caracteristica.nome } }
    end

    assert_redirected_to principal_caracteristica_url(PrincipalCaracteristica.last)
  end

  test "should show principal_caracteristica" do
    get principal_caracteristica_url(@principal_caracteristica)
    assert_response :success
  end

  test "should get edit" do
    get edit_principal_caracteristica_url(@principal_caracteristica)
    assert_response :success
  end

  test "should update principal_caracteristica" do
    patch principal_caracteristica_url(@principal_caracteristica), params: { principal_caracteristica: { nome: @principal_caracteristica.nome } }
    assert_redirected_to principal_caracteristica_url(@principal_caracteristica)
  end

  test "should destroy principal_caracteristica" do
    assert_difference('PrincipalCaracteristica.count', -1) do
      delete principal_caracteristica_url(@principal_caracteristica)
    end

    assert_redirected_to principal_caracteristicas_url
  end
end
