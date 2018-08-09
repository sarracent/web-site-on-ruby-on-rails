require 'test_helper'

class PharmaceuticalgroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pharmaceuticalgroup = pharmaceuticalgroups(:one)
  end

  test "should get index" do
    get pharmaceuticalgroups_url
    assert_response :success
  end

  test "should get new" do
    get new_pharmaceuticalgroup_url
    assert_response :success
  end

  test "should create pharmaceuticalgroup" do
    assert_difference('Pharmaceuticalgroup.count') do
      post pharmaceuticalgroups_url, params: { pharmaceuticalgroup: { name: @pharmaceuticalgroup.name } }
    end

    assert_redirected_to pharmaceuticalgroup_url(Pharmaceuticalgroup.last)
  end

  test "should show pharmaceuticalgroup" do
    get pharmaceuticalgroup_url(@pharmaceuticalgroup)
    assert_response :success
  end

  test "should get edit" do
    get edit_pharmaceuticalgroup_url(@pharmaceuticalgroup)
    assert_response :success
  end

  test "should update pharmaceuticalgroup" do
    patch pharmaceuticalgroup_url(@pharmaceuticalgroup), params: { pharmaceuticalgroup: { name: @pharmaceuticalgroup.name } }
    assert_redirected_to pharmaceuticalgroup_url(@pharmaceuticalgroup)
  end

  test "should destroy pharmaceuticalgroup" do
    assert_difference('Pharmaceuticalgroup.count', -1) do
      delete pharmaceuticalgroup_url(@pharmaceuticalgroup)
    end

    assert_redirected_to pharmaceuticalgroups_url
  end
end
