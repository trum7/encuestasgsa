require 'test_helper'

class CourseprofesorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @courseprofesor = courseprofesors(:one)
  end

  test "should get index" do
    get courseprofesors_url
    assert_response :success
  end

  test "should get new" do
    get new_courseprofesor_url
    assert_response :success
  end

  test "should create courseprofesor" do
    assert_difference('Courseprofesor.count') do
      post courseprofesors_url, params: { courseprofesor: { course: @courseprofesor.course, profesor: @courseprofesor.profesor, subject: @courseprofesor.subject } }
    end

    assert_redirected_to courseprofesor_url(Courseprofesor.last)
  end

  test "should show courseprofesor" do
    get courseprofesor_url(@courseprofesor)
    assert_response :success
  end

  test "should get edit" do
    get edit_courseprofesor_url(@courseprofesor)
    assert_response :success
  end

  test "should update courseprofesor" do
    patch courseprofesor_url(@courseprofesor), params: { courseprofesor: { course: @courseprofesor.course, profesor: @courseprofesor.profesor, subject: @courseprofesor.subject } }
    assert_redirected_to courseprofesor_url(@courseprofesor)
  end

  test "should destroy courseprofesor" do
    assert_difference('Courseprofesor.count', -1) do
      delete courseprofesor_url(@courseprofesor)
    end

    assert_redirected_to courseprofesors_url
  end
end
