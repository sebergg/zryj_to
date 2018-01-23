require 'test_helper'

class ProduktyNaZamowieniusControllerTest < ActionController::TestCase
  setup do
    @produkty_na_zamowieniu = produkty_na_zamowienius(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:produkty_na_zamowienius)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create produkty_na_zamowieniu" do
    assert_difference('ProduktyNaZamowieniu.count') do
      post :create, produkty_na_zamowieniu: { ID_PROD: @produkty_na_zamowieniu.ID_PROD, ID_ZAMOWIENIA: @produkty_na_zamowieniu.ID_ZAMOWIENIA, LICZBA_SZTUK: @produkty_na_zamowieniu.LICZBA_SZTUK }
    end

    assert_redirected_to produkty_na_zamowieniu_path(assigns(:produkty_na_zamowieniu))
  end

  test "should show produkty_na_zamowieniu" do
    get :show, id: @produkty_na_zamowieniu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @produkty_na_zamowieniu
    assert_response :success
  end

  test "should update produkty_na_zamowieniu" do
    patch :update, id: @produkty_na_zamowieniu, produkty_na_zamowieniu: { ID_PROD: @produkty_na_zamowieniu.ID_PROD, ID_ZAMOWIENIA: @produkty_na_zamowieniu.ID_ZAMOWIENIA, LICZBA_SZTUK: @produkty_na_zamowieniu.LICZBA_SZTUK }
    assert_redirected_to produkty_na_zamowieniu_path(assigns(:produkty_na_zamowieniu))
  end

  test "should destroy produkty_na_zamowieniu" do
    assert_difference('ProduktyNaZamowieniu.count', -1) do
      delete :destroy, id: @produkty_na_zamowieniu
    end

    assert_redirected_to produkty_na_zamowienius_path
  end
end
