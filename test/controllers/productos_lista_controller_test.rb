require 'test_helper'

class ProductosListaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get productos_lista_index_url
    assert_response :success
  end

end
