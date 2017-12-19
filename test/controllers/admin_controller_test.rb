require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get admin_create_url
    assert_response :success
  end

end
