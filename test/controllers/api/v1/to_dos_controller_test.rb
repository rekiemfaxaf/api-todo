require 'test_helper'

class ToDosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
    @to_do = to_dos(:one)
  end

  test "should get index" do
    get api_v1_user_to_dos_url(@user), as: :json
    assert_response :success
  end

  test "should create to_do" do
    assert_difference('ToDo.count') do
      post api_v1_user_to_dos_url(@user), params: { to_do: { description: @to_do.description, state: @to_do.state, title: @to_do.title, user_id: @user.id } }, as: :json
    end

    assert_response 201
  end

  test "should show to_do" do
    get api_v1_user_to_do_url(@user,@to_do), as: :json
    assert_response :success
  end

  test "should update to_do" do
    patch api_v1_user_to_do_url(@user,@to_do), params: { to_do: { description: @to_do.description, state: @to_do.state, title: @to_do.title, user_id: @user.id } }, as: :json
    assert_response 200
  end

  test "should update to_do state" do
    patch api_v1_user_to_do_url(@user,@to_do), params: { to_do: { state: 1, user_id: @user.id} }, as: :json
    assert_response 200
  end
end
