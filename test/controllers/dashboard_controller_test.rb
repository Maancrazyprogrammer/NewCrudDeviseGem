require "test_helper"

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get profile" do
    get dashboard_profile_url
    assert_response :success
  end

  test "should get homePage" do
    get dashboard_homePage_url
    assert_response :success
  end

  test "should get login" do
    get dashboard_login_url
    assert_response :success
  end

  test "should get signUp" do
    get dashboard_signUp_url
    assert_response :success
  end
end
