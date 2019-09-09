require 'test_helper'

class FruitsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fruits_index_url
    assert_response :success
  end

  test "should get show" do
    get fruits_show_url
    assert_response :success
  end

end
