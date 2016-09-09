require 'test_helper'

class TrainsControllerTest < ActionController::TestCase
  setup do
    @train = trains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trains)
  end

  test "should create train" do
    assert_difference('Train.count') do
      post :create, train: { arrives: @train.arrives, departs: @train.departs, line: @train.line }
    end

    assert_response 201
  end

  test "should show train" do
    get :show, id: @train
    assert_response :success
  end

  test "should update train" do
    put :update, id: @train, train: { arrives: @train.arrives, departs: @train.departs, line: @train.line }
    assert_response 204
  end

  test "should destroy train" do
    assert_difference('Train.count', -1) do
      delete :destroy, id: @train
    end

    assert_response 204
  end
end
