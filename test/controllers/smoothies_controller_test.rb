require 'test_helper'

class SmoothiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get smoothies_index_url
    assert_response :success
  end

  test "should get show" do
    get smoothies_show_url
    assert_response :success
  end

end
