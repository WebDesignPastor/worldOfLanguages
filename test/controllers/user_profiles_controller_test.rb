require "test_helper"

class UserProfilesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_profiles_new_url
    assert_response :success
  end

  test "should get create" do
    get user_profiles_create_url
    assert_response :success
  end
end
