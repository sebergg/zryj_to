require 'test_helper'

class TypyPracownikasControllerTest < ActionController::TestCase
  setup do
    @typy_pracownika = typy_pracownikas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:typy_pracownikas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create typy_pracownika" do
    assert_difference('TypyPracownika.count') do
      post :create, typy_pracownika: { ID_TYPU: @typy_pracownika.ID_TYPU, NAZWA_TYPU: @typy_pracownika.NAZWA_TYPU }
    end

    assert_redirected_to typy_pracownika_path(assigns(:typy_pracownika))
  end

  test "should show typy_pracownika" do
    get :show, id: @typy_pracownika
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @typy_pracownika
    assert_response :success
  end

  test "should update typy_pracownika" do
    patch :update, id: @typy_pracownika, typy_pracownika: { ID_TYPU: @typy_pracownika.ID_TYPU, NAZWA_TYPU: @typy_pracownika.NAZWA_TYPU }
    assert_redirected_to typy_pracownika_path(assigns(:typy_pracownika))
  end

  test "should destroy typy_pracownika" do
    assert_difference('TypyPracownika.count', -1) do
      delete :destroy, id: @typy_pracownika
    end

    assert_redirected_to typy_pracownikas_path
  end
end
