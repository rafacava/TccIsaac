require 'test_helper'

class TerciarioFatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @terciario_fator = terciario_fators(:one)
  end

  test "should get index" do
    get terciario_fators_url
    assert_response :success
  end

  test "should get new" do
    get new_terciario_fator_url
    assert_response :success
  end

  test "should create terciario_fator" do
    assert_difference('TerciarioFator.count') do
      post terciario_fators_url, params: { terciario_fator: { nome: @terciario_fator.nome } }
    end

    assert_redirected_to terciario_fator_url(TerciarioFator.last)
  end

  test "should show terciario_fator" do
    get terciario_fator_url(@terciario_fator)
    assert_response :success
  end

  test "should get edit" do
    get edit_terciario_fator_url(@terciario_fator)
    assert_response :success
  end

  test "should update terciario_fator" do
    patch terciario_fator_url(@terciario_fator), params: { terciario_fator: { nome: @terciario_fator.nome } }
    assert_redirected_to terciario_fator_url(@terciario_fator)
  end

  test "should destroy terciario_fator" do
    assert_difference('TerciarioFator.count', -1) do
      delete terciario_fator_url(@terciario_fator)
    end

    assert_redirected_to terciario_fators_url
  end
end
