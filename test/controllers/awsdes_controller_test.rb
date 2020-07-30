require 'test_helper'

class AwsdesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @awsde = awsdes(:one)
  end

  test "should get index" do
    get awsdes_url
    assert_response :success
  end

  test "should get new" do
    get new_awsde_url
    assert_response :success
  end

  test "should create awsde" do
    assert_difference('Awsde.count') do
      post awsdes_url, params: { awsde: { context: @awsde.context, title: @awsde.title } }
    end

    assert_redirected_to awsde_url(Awsde.last)
  end

  test "should show awsde" do
    get awsde_url(@awsde)
    assert_response :success
  end

  test "should get edit" do
    get edit_awsde_url(@awsde)
    assert_response :success
  end

  test "should update awsde" do
    patch awsde_url(@awsde), params: { awsde: { context: @awsde.context, title: @awsde.title } }
    assert_redirected_to awsde_url(@awsde)
  end

  test "should destroy awsde" do
    assert_difference('Awsde.count', -1) do
      delete awsde_url(@awsde)
    end

    assert_redirected_to awsdes_url
  end
end
