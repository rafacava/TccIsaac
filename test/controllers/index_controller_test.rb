require 'test_helper'

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get principal" do
    get index_principal_url
    assert_response :success
  end

end
