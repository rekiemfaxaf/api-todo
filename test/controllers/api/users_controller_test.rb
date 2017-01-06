require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get api_v1_users_url, as: :json
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post api_v1_users_url, params: { user: { email: rand(0..100).to_s + @user.email.to_s, name: @user.name } }, as: :json
    end

    assert_response 201
  end

  test "should show user" do
    get api_v1_user_url(@user), as: :json
    assert_response :success
  end
end
