require 'test_helper'

class BookreviewsControllerTest < ActionController::TestCase
  setup do
    @bookreview = bookreviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bookreviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bookreview" do
    assert_difference('Bookreview.count') do
      post :create, bookreview: { details: @bookreview.details, rating: @bookreview.rating, summary: @bookreview.summary }
    end

    assert_redirected_to bookreview_path(assigns(:bookreview))
  end

  test "should show bookreview" do
    get :show, id: @bookreview
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bookreview
    assert_response :success
  end

  test "should update bookreview" do
    patch :update, id: @bookreview, bookreview: { details: @bookreview.details, rating: @bookreview.rating, summary: @bookreview.summary }
    assert_redirected_to bookreview_path(assigns(:bookreview))
  end

  test "should destroy bookreview" do
    assert_difference('Bookreview.count', -1) do
      delete :destroy, id: @bookreview
    end

    assert_redirected_to bookreviews_path
  end
end
