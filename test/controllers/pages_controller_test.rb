require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get inicio" do
    get :inicio
    assert_response :success
  end

  test "should get informacion_de_interes" do
    get :informacion_de_interes
    assert_response :success
  end

  test "should get informes_de_gestion" do
    get :informes_de_gestion
    assert_response :success
  end

  test "should get nuestra_entidad" do
    get :nuestra_entidad
    assert_response :success
  end

  test "should get plan_de_accion" do
    get :plan_de_accion
    assert_response :success
  end

  test "should get normatividad" do
    get :normatividad
    assert_response :success
  end

end
