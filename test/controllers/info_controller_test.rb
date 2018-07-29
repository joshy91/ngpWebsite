require 'test_helper'

class InfoControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get info_about_url
    assert_response :success
  end

  test "should get suppliers" do
    get info_suppliers_url
    assert_response :success
  end

end
