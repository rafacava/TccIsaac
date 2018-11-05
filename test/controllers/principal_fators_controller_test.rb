require 'test_helper'

class PrincipalFatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @principal_fator = principal_fators(:one)
  end

  test "should get index" do
    get principal_fators_url
    assert_response :success
  end

  test "should get new" do
    get new_principal_fator_url
    assert_response :success
  end

  test "should create principal_fator" do
    assert_difference('PrincipalFator.count') do
      post principal_fators_url, params: { principal_fator: { nome: @principal_fator.nome } }
    end

    assert_redirected_to principal_fator_url(PrincipalFator.last)
  end

  test "should show principal_fator" do
    get principal_fator_url(@principal_fator)
    assert_response :success
  end

  test "should get edit" do
    get edit_principal_fator_url(@principal_fator)
    assert_response :success
  end

  test "should update principal_fator" do
    patch principal_fator_url(@principal_fator), params: { principal_fator: { nome: @principal_fator.nome } }
    assert_redirected_to principal_fator_url(@principal_fator)
  end

  test "should destroy principal_fator" do
    assert_difference('PrincipalFator.count', -1) do
      delete principal_fator_url(@principal_fator)
    end

    assert_redirected_to principal_fators_url
  end
end
