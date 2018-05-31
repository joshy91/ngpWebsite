require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get welcome_home_url
    assert_response :success
  end

  test "should get automaticTrans" do
    get welcome_automaticTrans_url
    assert_response :success
  end

  test "should get standardTrans" do
    get welcome_standardTrans_url
    assert_response :success
  end

  test "should get differential" do
    get welcome_differential_url
    assert_response :success
  end

  test "should get transferCase" do
    get welcome_transferCase_url
    assert_response :success
  end

  test "should get performance" do
    get welcome_performance_url
    assert_response :success
  end

  test "should get toolAndequipment" do
    get welcome_toolAndequipment_url
    assert_response :success
  end

  test "should get suppliers" do
    get welcome_suppliers_url
    assert_response :success
  end

  test "should get contact" do
    get welcome_contact_url
    assert_response :success
  end

end
