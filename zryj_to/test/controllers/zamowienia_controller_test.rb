require 'test_helper'

class ZamowieniaControllerTest < ActionController::TestCase
  setup do
    @zamowienium = zamowienia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zamowienia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zamowienium" do
    assert_difference('Zamowienium.count') do
      post :create, zamowienium: { CZAS_REALIZACJI: @zamowienium.CZAS_REALIZACJI, ID_KLIENTA: @zamowienium.ID_KLIENTA, ID_PRACOWNIKA: @zamowienium.ID_PRACOWNIKA, ID_ZAMOWIENIA: @zamowienium.ID_ZAMOWIENIA }
    end

    assert_redirected_to zamowienium_path(assigns(:zamowienium))
  end

  test "should show zamowienium" do
    get :show, id: @zamowienium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zamowienium
    assert_response :success
  end

  test "should update zamowienium" do
    patch :update, id: @zamowienium, zamowienium: { CZAS_REALIZACJI: @zamowienium.CZAS_REALIZACJI, ID_KLIENTA: @zamowienium.ID_KLIENTA, ID_PRACOWNIKA: @zamowienium.ID_PRACOWNIKA, ID_ZAMOWIENIA: @zamowienium.ID_ZAMOWIENIA }
    assert_redirected_to zamowienium_path(assigns(:zamowienium))
  end

  test "should destroy zamowienium" do
    assert_difference('Zamowienium.count', -1) do
      delete :destroy, id: @zamowienium
    end

    assert_redirected_to zamowienia_path
  end
end
