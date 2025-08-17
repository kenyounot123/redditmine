require "test_helper"

class LandingsControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome" do
    get root_url
    assert_response :success
  end
end
