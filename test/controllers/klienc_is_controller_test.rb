require 'test_helper'

class KliencIsControllerTest < ActionController::TestCase
  setup do
    @klienci = kliencis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kliencis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create klienci" do
    assert_difference('Klienci.count') do
      post :create, klienci: { ID_KLIENTA: @klienci.ID_KLIENTA, IMIE: @klienci.IMIE, KOD_POCZTOWY: @klienci.KOD_POCZTOWY, NAZWISKO: @klienci.NAZWISKO, NUMER_LOKALU: @klienci.NUMER_LOKALU, ULICA: @klienci.ULICA }
    end

    assert_redirected_to klienci_path(assigns(:klienci))
  end

  test "should show klienci" do
    get :show, id: @klienci
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @klienci
    assert_response :success
  end

  test "should update klienci" do
    patch :update, id: @klienci, klienci: { ID_KLIENTA: @klienci.ID_KLIENTA, IMIE: @klienci.IMIE, KOD_POCZTOWY: @klienci.KOD_POCZTOWY, NAZWISKO: @klienci.NAZWISKO, NUMER_LOKALU: @klienci.NUMER_LOKALU, ULICA: @klienci.ULICA }
    assert_redirected_to klienci_path(assigns(:klienci))
  end

  test "should destroy klienci" do
    assert_difference('Klienci.count', -1) do
      delete :destroy, id: @klienci
    end

    assert_redirected_to kliencis_path
  end
end
