require 'test_helper'

class SecundarioFatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @secundario_fator = secundario_fators(:one)
  end

  test "should get index" do
    get secundario_fators_url
    assert_response :success
  end

  test "should get new" do
    get new_secundario_fator_url
    assert_response :success
  end

  test "should create secundario_fator" do
    assert_difference('SecundarioFator.count') do
      post secundario_fators_url, params: { secundario_fator: { nome: @secundario_fator.nome } }
    end

    assert_redirected_to secundario_fator_url(SecundarioFator.last)
  end

  test "should show secundario_fator" do
    get secundario_fator_url(@secundario_fator)
    assert_response :success
  end

  test "should get edit" do
    get edit_secundario_fator_url(@secundario_fator)
    assert_response :success
  end

  test "should update secundario_fator" do
    patch secundario_fator_url(@secundario_fator), params: { secundario_fator: { nome: @secundario_fator.nome } }
    assert_redirected_to secundario_fator_url(@secundario_fator)
  end

  test "should destroy secundario_fator" do
    assert_difference('SecundarioFator.count', -1) do
      delete secundario_fator_url(@secundario_fator)
    end

    assert_redirected_to secundario_fators_url
  end
end
