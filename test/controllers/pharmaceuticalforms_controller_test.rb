require 'test_helper'

class PharmaceuticalformsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pharmaceuticalform = pharmaceuticalforms(:one)
  end

  test "should get index" do
    get pharmaceuticalforms_url
    assert_response :success
  end

  test "should get new" do
    get new_pharmaceuticalform_url
    assert_response :success
  end

  test "should create pharmaceuticalform" do
    assert_difference('Pharmaceuticalform.count') do
      post pharmaceuticalforms_url, params: { pharmaceuticalform: { name: @pharmaceuticalform.name } }
    end

    assert_redirected_to pharmaceuticalform_url(Pharmaceuticalform.last)
  end

  test "should show pharmaceuticalform" do
    get pharmaceuticalform_url(@pharmaceuticalform)
    assert_response :success
  end

  test "should get edit" do
    get edit_pharmaceuticalform_url(@pharmaceuticalform)
    assert_response :success
  end

  test "should update pharmaceuticalform" do
    patch pharmaceuticalform_url(@pharmaceuticalform), params: { pharmaceuticalform: { name: @pharmaceuticalform.name } }
    assert_redirected_to pharmaceuticalform_url(@pharmaceuticalform)
  end

  test "should destroy pharmaceuticalform" do
    assert_difference('Pharmaceuticalform.count', -1) do
      delete pharmaceuticalform_url(@pharmaceuticalform)
    end

    assert_redirected_to pharmaceuticalforms_url
  end
end
