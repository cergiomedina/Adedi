require 'test_helper'

class DevolucionsControllerTest < ActionController::TestCase
  setup do
    @devolucion = devolucions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:devolucions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create devolucion" do
    assert_difference('Devolucion.count') do
      post :create, devolucion: { fecha_devolucion: @devolucion.fecha_devolucion, id_devolucion: @devolucion.id_devolucion }
    end

    assert_redirected_to devolucion_path(assigns(:devolucion))
  end

  test "should show devolucion" do
    get :show, id: @devolucion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @devolucion
    assert_response :success
  end

  test "should update devolucion" do
    patch :update, id: @devolucion, devolucion: { fecha_devolucion: @devolucion.fecha_devolucion, id_devolucion: @devolucion.id_devolucion }
    assert_redirected_to devolucion_path(assigns(:devolucion))
  end

  test "should destroy devolucion" do
    assert_difference('Devolucion.count', -1) do
      delete :destroy, id: @devolucion
    end

    assert_redirected_to devolucions_path
  end
end
