require 'test_helper'

class PracowniciesControllerTest < ActionController::TestCase
  setup do
    @pracownicy = pracownicies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pracownicies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pracownicy" do
    assert_difference('Pracownicy.count') do
      post :create, pracownicy: { ID_PRACOWNIKA: @pracownicy.ID_PRACOWNIKA, ID_REST: @pracownicy.ID_REST, ID_TYPU: @pracownicy.ID_TYPU, IMIE: @pracownicy.IMIE, NAZWISKO: @pracownicy.NAZWISKO, ZAROBKI: @pracownicy.ZAROBKI }
    end

    assert_redirected_to pracownicy_path(assigns(:pracownicy))
  end

  test "should show pracownicy" do
    get :show, id: @pracownicy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pracownicy
    assert_response :success
  end

  test "should update pracownicy" do
    patch :update, id: @pracownicy, pracownicy: { ID_PRACOWNIKA: @pracownicy.ID_PRACOWNIKA, ID_REST: @pracownicy.ID_REST, ID_TYPU: @pracownicy.ID_TYPU, IMIE: @pracownicy.IMIE, NAZWISKO: @pracownicy.NAZWISKO, ZAROBKI: @pracownicy.ZAROBKI }
    assert_redirected_to pracownicy_path(assigns(:pracownicy))
  end

  test "should destroy pracownicy" do
    assert_difference('Pracownicy.count', -1) do
      delete :destroy, id: @pracownicy
    end

    assert_redirected_to pracownicies_path
  end
end
