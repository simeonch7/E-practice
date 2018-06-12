require 'test_helper'

class SchoolclassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @schoolclass = schoolclasses(:one)
  end

  test "should get index" do
    get schoolclasses_url
    assert_response :success
  end

  test "should get new" do
    get new_schoolclass_url
    assert_response :success
  end

  test "should create schoolclass" do
    assert_difference('Schoolclass.count') do
      post schoolclasses_url, params: { schoolclass: { day: @schoolclass.day, teacher_id: @schoolclass.teacher_id } }
    end

    assert_redirected_to schoolclass_url(Schoolclass.last)
  end

  test "should show schoolclass" do
    get schoolclass_url(@schoolclass)
    assert_response :success
  end

  test "should get edit" do
    get edit_schoolclass_url(@schoolclass)
    assert_response :success
  end

  test "should update schoolclass" do
    patch schoolclass_url(@schoolclass), params: { schoolclass: { day: @schoolclass.day, teacher_id: @schoolclass.teacher_id } }
    assert_redirected_to schoolclass_url(@schoolclass)
  end

  test "should destroy schoolclass" do
    assert_difference('Schoolclass.count', -1) do
      delete schoolclass_url(@schoolclass)
    end

    assert_redirected_to schoolclasses_url
  end
end
