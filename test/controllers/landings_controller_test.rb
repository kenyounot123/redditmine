require "test_helper"

class LandingsControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome" do
    get landings_welcome_url
    assert_response :success
  end
end
