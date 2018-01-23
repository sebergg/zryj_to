require 'test_helper'

class RestauracjesControllerTest < ActionController::TestCase
  setup do
    @restauracje = restauracjes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restauracjes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restauracje" do
    assert_difference('Restauracje.count') do
      post :create, restauracje: { ID_OBSZARU: @restauracje.ID_OBSZARU, ID_REST: @restauracje.ID_REST, KOD_POCZTOWY: @restauracje.KOD_POCZTOWY, NAZWA: @restauracje.NAZWA, NUMER_LOKALU: @restauracje.NUMER_LOKALU, ULICA: @restauracje.ULICA }
    end

    assert_redirected_to restauracje_path(assigns(:restauracje))
  end

  test "should show restauracje" do
    get :show, id: @restauracje
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restauracje
    assert_response :success
  end

  test "should update restauracje" do
    patch :update, id: @restauracje, restauracje: { ID_OBSZARU: @restauracje.ID_OBSZARU, ID_REST: @restauracje.ID_REST, KOD_POCZTOWY: @restauracje.KOD_POCZTOWY, NAZWA: @restauracje.NAZWA, NUMER_LOKALU: @restauracje.NUMER_LOKALU, ULICA: @restauracje.ULICA }
    assert_redirected_to restauracje_path(assigns(:restauracje))
  end

  test "should destroy restauracje" do
    assert_difference('Restauracje.count', -1) do
      delete :destroy, id: @restauracje
    end

    assert_redirected_to restauracjes_path
  end
end
