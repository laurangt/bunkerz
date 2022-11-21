require "test_helper"

class BunkersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bunkers_index_url
    assert_response :success
  end

  test "should get new" do
    get bunkers_new_url
    assert_response :success
  end

  test "should get create" do
    get bunkers_create_url
    assert_response :success
  end
end
