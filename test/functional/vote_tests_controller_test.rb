require 'test_helper'

class VoteTestsControllerTest < ActionController::TestCase
  setup do
    @vote_test = vote_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vote_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vote_test" do
    assert_difference('VoteTest.count') do
      post :create, :vote_test => @vote_test.attributes
    end

    assert_redirected_to vote_test_path(assigns(:vote_test))
  end

  test "should show vote_test" do
    get :show, :id => @vote_test.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @vote_test.to_param
    assert_response :success
  end

  test "should update vote_test" do
    put :update, :id => @vote_test.to_param, :vote_test => @vote_test.attributes
    assert_redirected_to vote_test_path(assigns(:vote_test))
  end

  test "should destroy vote_test" do
    assert_difference('VoteTest.count', -1) do
      delete :destroy, :id => @vote_test.to_param
    end

    assert_redirected_to vote_tests_path
  end
end
