require "test_helper"

class SklepControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sklep_index_url
    assert_response :success
  end
end
