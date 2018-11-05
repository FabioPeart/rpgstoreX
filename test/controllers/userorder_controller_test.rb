require 'test_helper'

class UserorderControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get userorder_index_url
    assert_response :success
  end

  test "should get show" do
    get userorder_show_url
    assert_response :success
  end

end
