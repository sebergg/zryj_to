require 'test_helper'

class UlicesControllerTest < ActionController::TestCase
  setup do
    @ulice = ulices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ulices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ulice" do
    assert_difference('Ulice.count') do
      post :create, ulice: { ID_ULICY: @ulice.ID_ULICY, KOD_POCZTOWY: @ulice.KOD_POCZTOWY, NUMER_LOKALU: @ulice.NUMER_LOKALU, ULICA: @ulice.ULICA }
    end

    assert_redirected_to ulice_path(assigns(:ulice))
  end

  test "should show ulice" do
    get :show, id: @ulice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ulice
    assert_response :success
  end

  test "should update ulice" do
    patch :update, id: @ulice, ulice: { ID_ULICY: @ulice.ID_ULICY, KOD_POCZTOWY: @ulice.KOD_POCZTOWY, NUMER_LOKALU: @ulice.NUMER_LOKALU, ULICA: @ulice.ULICA }
    assert_redirected_to ulice_path(assigns(:ulice))
  end

  test "should destroy ulice" do
    assert_difference('Ulice.count', -1) do
      delete :destroy, id: @ulice
    end

    assert_redirected_to ulices_path
  end
end
