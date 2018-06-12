require 'test_helper'

class PartsControllerTest < ActionDispatch::IntegrationTest
  test "should get automaticTrans" do
    get parts_automaticTrans_url
    assert_response :success
  end

  test "should get standardTrans" do
    get parts_standardTrans_url
    assert_response :success
  end

  test "should get performance" do
    get parts_performance_url
    assert_response :success
  end

  test "should get differential" do
    get parts_differential_url
    assert_response :success
  end

  test "should get transferCase" do
    get parts_transferCase_url
    assert_response :success
  end

  test "should get toolsAndEquipment" do
    get parts_toolsAndEquipment_url
    assert_response :success
  end

end
