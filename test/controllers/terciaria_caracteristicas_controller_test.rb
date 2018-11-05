require 'test_helper'

class TerciariaCaracteristicasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @terciaria_caracteristica = terciaria_caracteristicas(:one)
  end

  test "should get index" do
    get terciaria_caracteristicas_url
    assert_response :success
  end

  test "should get new" do
    get new_terciaria_caracteristica_url
    assert_response :success
  end

  test "should create terciaria_caracteristica" do
    assert_difference('TerciariaCaracteristica.count') do
      post terciaria_caracteristicas_url, params: { terciaria_caracteristica: { nome: @terciaria_caracteristica.nome } }
    end

    assert_redirected_to terciaria_caracteristica_url(TerciariaCaracteristica.last)
  end

  test "should show terciaria_caracteristica" do
    get terciaria_caracteristica_url(@terciaria_caracteristica)
    assert_response :success
  end

  test "should get edit" do
    get edit_terciaria_caracteristica_url(@terciaria_caracteristica)
    assert_response :success
  end

  test "should update terciaria_caracteristica" do
    patch terciaria_caracteristica_url(@terciaria_caracteristica), params: { terciaria_caracteristica: { nome: @terciaria_caracteristica.nome } }
    assert_redirected_to terciaria_caracteristica_url(@terciaria_caracteristica)
  end

  test "should destroy terciaria_caracteristica" do
    assert_difference('TerciariaCaracteristica.count', -1) do
      delete terciaria_caracteristica_url(@terciaria_caracteristica)
    end

    assert_redirected_to terciaria_caracteristicas_url
  end
end
