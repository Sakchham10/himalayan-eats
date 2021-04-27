require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get Master" do
    get home_Master_url
    assert_response :success
  end
end
