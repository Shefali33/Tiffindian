require 'test_helper'

class MasterDaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @master_day = master_days(:one)
  end

  test "should get index" do
    get master_days_url
    assert_response :success
  end

  test "should get new" do
    get new_master_day_url
    assert_response :success
  end

  test "should create master_day" do
    assert_difference('MasterDay.count') do
      post master_days_url, params: { master_day: {  } }
    end

    assert_redirected_to master_day_url(MasterDay.last)
  end

  test "should show master_day" do
    get master_day_url(@master_day)
    assert_response :success
  end

  test "should get edit" do
    get edit_master_day_url(@master_day)
    assert_response :success
  end

  test "should update master_day" do
    patch master_day_url(@master_day), params: { master_day: {  } }
    assert_redirected_to master_day_url(@master_day)
  end

  test "should destroy master_day" do
    assert_difference('MasterDay.count', -1) do
      delete master_day_url(@master_day)
    end

    assert_redirected_to master_days_url
  end
end
