require 'test_helper'

class RegistrarseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get registrarse_index_url
    assert_response :success
  end

end
