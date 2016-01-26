require 'test_helper'

class DetalleArriendosControllerTest < ActionController::TestCase
  setup do
    @detalle_arriendo = detalle_arriendos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detalle_arriendos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detalle_arriendo" do
    assert_difference('DetalleArriendo.count') do
      post :create, detalle_arriendo: { diferencia_dinero: @detalle_arriendo.diferencia_dinero, garantia_arriendo: @detalle_arriendo.garantia_arriendo, linea_detalle_arriendo: @detalle_arriendo.linea_detalle_arriendo, precio_arriendo: @detalle_arriendo.precio_arriendo }
    end

    assert_redirected_to detalle_arriendo_path(assigns(:detalle_arriendo))
  end

  test "should show detalle_arriendo" do
    get :show, id: @detalle_arriendo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detalle_arriendo
    assert_response :success
  end

  test "should update detalle_arriendo" do
    patch :update, id: @detalle_arriendo, detalle_arriendo: { diferencia_dinero: @detalle_arriendo.diferencia_dinero, garantia_arriendo: @detalle_arriendo.garantia_arriendo, linea_detalle_arriendo: @detalle_arriendo.linea_detalle_arriendo, precio_arriendo: @detalle_arriendo.precio_arriendo }
    assert_redirected_to detalle_arriendo_path(assigns(:detalle_arriendo))
  end

  test "should destroy detalle_arriendo" do
    assert_difference('DetalleArriendo.count', -1) do
      delete :destroy, id: @detalle_arriendo
    end

    assert_redirected_to detalle_arriendos_path
  end
end
