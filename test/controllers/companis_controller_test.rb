require "test_helper"

class CompanisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get companis_index_url
    assert_response :success
  end

  test "should get show" do
    get companis_show_url
    assert_response :success
  end
end
