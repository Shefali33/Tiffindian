require 'test_helper'

class MasterMealtypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @master_mealtype = master_mealtypes(:one)
  end

  test "should get index" do
    get master_mealtypes_url
    assert_response :success
  end

  test "should get new" do
    get new_master_mealtype_url
    assert_response :success
  end

  test "should create master_mealtype" do
    assert_difference('MasterMealtype.count') do
      post master_mealtypes_url, params: { master_mealtype: {  } }
    end

    assert_redirected_to master_mealtype_url(MasterMealtype.last)
  end

  test "should show master_mealtype" do
    get master_mealtype_url(@master_mealtype)
    assert_response :success
  end

  test "should get edit" do
    get edit_master_mealtype_url(@master_mealtype)
    assert_response :success
  end

  test "should update master_mealtype" do
    patch master_mealtype_url(@master_mealtype), params: { master_mealtype: {  } }
    assert_redirected_to master_mealtype_url(@master_mealtype)
  end

  test "should destroy master_mealtype" do
    assert_difference('MasterMealtype.count', -1) do
      delete master_mealtype_url(@master_mealtype)
    end

    assert_redirected_to master_mealtypes_url
  end
end
