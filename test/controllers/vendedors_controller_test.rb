require 'test_helper'

class VendedorsControllerTest < ActionController::TestCase
  setup do
    @vendedor = vendedors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vendedors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vendedor" do
    assert_difference('Vendedor.count') do
      post :create, vendedor: { apellido_vendedor: @vendedor.apellido_vendedor, correo_vendedor: @vendedor.correo_vendedor, direccion_vendedor: @vendedor.direccion_vendedor, estado_vendedor: @vendedor.estado_vendedor, nombre_vendedor: @vendedor.nombre_vendedor, password_vendedor: @vendedor.password_vendedor, rut_vendedor: @vendedor.rut_vendedor, telefono_vendedor: @vendedor.telefono_vendedor }
    end

    assert_redirected_to vendedor_path(assigns(:vendedor))
  end

  test "should show vendedor" do
    get :show, id: @vendedor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vendedor
    assert_response :success
  end

  test "should update vendedor" do
    patch :update, id: @vendedor, vendedor: { apellido_vendedor: @vendedor.apellido_vendedor, correo_vendedor: @vendedor.correo_vendedor, direccion_vendedor: @vendedor.direccion_vendedor, estado_vendedor: @vendedor.estado_vendedor, nombre_vendedor: @vendedor.nombre_vendedor, password_vendedor: @vendedor.password_vendedor, rut_vendedor: @vendedor.rut_vendedor, telefono_vendedor: @vendedor.telefono_vendedor }
    assert_redirected_to vendedor_path(assigns(:vendedor))
  end

  test "should destroy vendedor" do
    assert_difference('Vendedor.count', -1) do
      delete :destroy, id: @vendedor
    end

    assert_redirected_to vendedors_path
  end
end
