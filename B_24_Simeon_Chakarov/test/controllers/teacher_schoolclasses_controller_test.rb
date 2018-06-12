require 'test_helper'

class TeacherSchoolclassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teacher_schoolclass = teacher_schoolclasses(:one)
  end

  test "should get index" do
    get teacher_schoolclasses_url
    assert_response :success
  end

  test "should get new" do
    get new_teacher_schoolclass_url
    assert_response :success
  end

  test "should create teacher_schoolclass" do
    assert_difference('TeacherSchoolclass.count') do
      post teacher_schoolclasses_url, params: { teacher_schoolclass: { schoolclass_id: @teacher_schoolclass.schoolclass_id, teacher_id: @teacher_schoolclass.teacher_id } }
    end

    assert_redirected_to teacher_schoolclass_url(TeacherSchoolclass.last)
  end

  test "should show teacher_schoolclass" do
    get teacher_schoolclass_url(@teacher_schoolclass)
    assert_response :success
  end

  test "should get edit" do
    get edit_teacher_schoolclass_url(@teacher_schoolclass)
    assert_response :success
  end

  test "should update teacher_schoolclass" do
    patch teacher_schoolclass_url(@teacher_schoolclass), params: { teacher_schoolclass: { schoolclass_id: @teacher_schoolclass.schoolclass_id, teacher_id: @teacher_schoolclass.teacher_id } }
    assert_redirected_to teacher_schoolclass_url(@teacher_schoolclass)
  end

  test "should destroy teacher_schoolclass" do
    assert_difference('TeacherSchoolclass.count', -1) do
      delete teacher_schoolclass_url(@teacher_schoolclass)
    end

    assert_redirected_to teacher_schoolclasses_url
  end
end
