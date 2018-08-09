require 'test_helper'

class AicaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get aica_index_url
    assert_response :success
  end

end
