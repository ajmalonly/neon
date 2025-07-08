require "test_helper"

class NeonSignsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get neon_signs_new_url
    assert_response :success
  end

  test "should get create" do
    get neon_signs_create_url
    assert_response :success
  end
end
