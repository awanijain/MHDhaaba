require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get services" do
    get home_services_url
    assert_response :success
  end

  test "should get about" do
    get home_about_url
    assert_response :success
  end

  test "should get menu" do
    get home_menu_url
    assert_response :success
  end

end
