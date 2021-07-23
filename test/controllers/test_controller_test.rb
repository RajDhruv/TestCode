require 'test_helper'

class TestControllerTest < ActionDispatch::IntegrationTest
  test "should get show_ip" do
    get test_show_ip_url
    assert_response :success
  end

end
