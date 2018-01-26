require 'test_helper'

class EncuestaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @encuestum = encuesta(:one)
  end

  test "should get index" do
    get encuesta_url
    assert_response :success
  end

  test "should get new" do
    get new_encuestum_url
    assert_response :success
  end

  test "should create encuestum" do
    assert_difference('Encuestum.count') do
      post encuesta_url, params: { encuestum: { bueno: @encuestum.bueno, mejorar: @encuestum.mejorar, p10: @encuestum.p10, p11: @encuestum.p11, p12: @encuestum.p12, p13: @encuestum.p13, p14: @encuestum.p14, p15: @encuestum.p15, p16: @encuestum.p16, p17: @encuestum.p17, p18: @encuestum.p18, p19: @encuestum.p19, p1: @encuestum.p1, p20: @encuestum.p20, p21: @encuestum.p21, p22: @encuestum.p22, p23: @encuestum.p23, p24: @encuestum.p24, p2: @encuestum.p2, p3: @encuestum.p3, p4: @encuestum.p4, p5: @encuestum.p5, p6: @encuestum.p6, p7: @encuestum.p7, p8: @encuestum.p8, p9: @encuestum.p9, profesor: @encuestum.profesor, student: @encuestum.student, subject: @encuestum.subject } }
    end

    assert_redirected_to encuestum_url(Encuestum.last)
  end

  test "should show encuestum" do
    get encuestum_url(@encuestum)
    assert_response :success
  end

  test "should get edit" do
    get edit_encuestum_url(@encuestum)
    assert_response :success
  end

  test "should update encuestum" do
    patch encuestum_url(@encuestum), params: { encuestum: { bueno: @encuestum.bueno, mejorar: @encuestum.mejorar, p10: @encuestum.p10, p11: @encuestum.p11, p12: @encuestum.p12, p13: @encuestum.p13, p14: @encuestum.p14, p15: @encuestum.p15, p16: @encuestum.p16, p17: @encuestum.p17, p18: @encuestum.p18, p19: @encuestum.p19, p1: @encuestum.p1, p20: @encuestum.p20, p21: @encuestum.p21, p22: @encuestum.p22, p23: @encuestum.p23, p24: @encuestum.p24, p2: @encuestum.p2, p3: @encuestum.p3, p4: @encuestum.p4, p5: @encuestum.p5, p6: @encuestum.p6, p7: @encuestum.p7, p8: @encuestum.p8, p9: @encuestum.p9, profesor: @encuestum.profesor, student: @encuestum.student, subject: @encuestum.subject } }
    assert_redirected_to encuestum_url(@encuestum)
  end

  test "should destroy encuestum" do
    assert_difference('Encuestum.count', -1) do
      delete encuestum_url(@encuestum)
    end

    assert_redirected_to encuesta_url
  end
end
