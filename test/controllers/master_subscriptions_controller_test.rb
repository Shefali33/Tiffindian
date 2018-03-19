require 'test_helper'

class MasterSubscriptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @master_subscription = master_subscriptions(:one)
  end

  test "should get index" do
    get master_subscriptions_url
    assert_response :success
  end

  test "should get new" do
    get new_master_subscription_url
    assert_response :success
  end

  test "should create master_subscription" do
    assert_difference('MasterSubscription.count') do
      post master_subscriptions_url, params: { master_subscription: {  } }
    end

    assert_redirected_to master_subscription_url(MasterSubscription.last)
  end

  test "should show master_subscription" do
    get master_subscription_url(@master_subscription)
    assert_response :success
  end

  test "should get edit" do
    get edit_master_subscription_url(@master_subscription)
    assert_response :success
  end

  test "should update master_subscription" do
    patch master_subscription_url(@master_subscription), params: { master_subscription: {  } }
    assert_redirected_to master_subscription_url(@master_subscription)
  end

  test "should destroy master_subscription" do
    assert_difference('MasterSubscription.count', -1) do
      delete master_subscription_url(@master_subscription)
    end

    assert_redirected_to master_subscriptions_url
  end
end
