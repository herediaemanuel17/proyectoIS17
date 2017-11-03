require 'test_helper'

class EducandingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get educanding_index_url
    assert_response :success
  end

end
