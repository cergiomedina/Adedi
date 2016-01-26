require 'test_helper'

class ClientesControllerTest < ActionController::TestCase
  setup do
    @cliente = clientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cliente" do
    assert_difference('Cliente.count') do
      post :create, cliente: { apellido_cliente: @cliente.apellido_cliente, correo_cliente: @cliente.correo_cliente, direccion_cliente: @cliente.direccion_cliente, estado_cliente: @cliente.estado_cliente, id_cliente: @cliente.id_cliente, nombre_cliente: @cliente.nombre_cliente, password_cliente: @cliente.password_cliente, rut_cliente: @cliente.rut_cliente, telefono_cliente: @cliente.telefono_cliente }
    end

    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "should show cliente" do
    get :show, id: @cliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cliente
    assert_response :success
  end

  test "should update cliente" do
    patch :update, id: @cliente, cliente: { apellido_cliente: @cliente.apellido_cliente, correo_cliente: @cliente.correo_cliente, direccion_cliente: @cliente.direccion_cliente, estado_cliente: @cliente.estado_cliente, id_cliente: @cliente.id_cliente, nombre_cliente: @cliente.nombre_cliente, password_cliente: @cliente.password_cliente, rut_cliente: @cliente.rut_cliente, telefono_cliente: @cliente.telefono_cliente }
    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "should destroy cliente" do
    assert_difference('Cliente.count', -1) do
      delete :destroy, id: @cliente
    end

    assert_redirected_to clientes_path
  end
end
