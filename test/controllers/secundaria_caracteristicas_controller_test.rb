require 'test_helper'

class SecundariaCaracteristicasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @secundaria_caracteristica = secundaria_caracteristicas(:one)
  end

  test "should get index" do
    get secundaria_caracteristicas_url
    assert_response :success
  end

  test "should get new" do
    get new_secundaria_caracteristica_url
    assert_response :success
  end

  test "should create secundaria_caracteristica" do
    assert_difference('SecundariaCaracteristica.count') do
      post secundaria_caracteristicas_url, params: { secundaria_caracteristica: { nome: @secundaria_caracteristica.nome } }
    end

    assert_redirected_to secundaria_caracteristica_url(SecundariaCaracteristica.last)
  end

  test "should show secundaria_caracteristica" do
    get secundaria_caracteristica_url(@secundaria_caracteristica)
    assert_response :success
  end

  test "should get edit" do
    get edit_secundaria_caracteristica_url(@secundaria_caracteristica)
    assert_response :success
  end

  test "should update secundaria_caracteristica" do
    patch secundaria_caracteristica_url(@secundaria_caracteristica), params: { secundaria_caracteristica: { nome: @secundaria_caracteristica.nome } }
    assert_redirected_to secundaria_caracteristica_url(@secundaria_caracteristica)
  end

  test "should destroy secundaria_caracteristica" do
    assert_difference('SecundariaCaracteristica.count', -1) do
      delete secundaria_caracteristica_url(@secundaria_caracteristica)
    end

    assert_redirected_to secundaria_caracteristicas_url
  end
end
