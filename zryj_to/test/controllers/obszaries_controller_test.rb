require 'test_helper'

class ObszariesControllerTest < ActionController::TestCase
  setup do
    @obszary = obszaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:obszaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create obszary" do
    assert_difference('Obszary.count') do
      post :create, obszary: { ID_OBSZARU: @obszary.ID_OBSZARU, ID_ULICY: @obszary.ID_ULICY, NAZWA_OBSZARU: @obszary.NAZWA_OBSZARU }
    end

    assert_redirected_to obszary_path(assigns(:obszary))
  end

  test "should show obszary" do
    get :show, id: @obszary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @obszary
    assert_response :success
  end

  test "should update obszary" do
    patch :update, id: @obszary, obszary: { ID_OBSZARU: @obszary.ID_OBSZARU, ID_ULICY: @obszary.ID_ULICY, NAZWA_OBSZARU: @obszary.NAZWA_OBSZARU }
    assert_redirected_to obszary_path(assigns(:obszary))
  end

  test "should destroy obszary" do
    assert_difference('Obszary.count', -1) do
      delete :destroy, id: @obszary
    end

    assert_redirected_to obszaries_path
  end
end
