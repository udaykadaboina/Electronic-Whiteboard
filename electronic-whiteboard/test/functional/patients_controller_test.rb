require 'test_helper'

class PatientsControllerTest < ActionController::TestCase
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post :create, patient: { blood_type: @patient.blood_type, comments: @patient.comments, dilation: @patient.dilation, effacement: @patient.effacement, first_name: @patient.first_name, gest_age: @patient.gest_age, gravidity: @patient.gravidity, group_b_strep: @patient.group_b_strep, last_exam: @patient.last_exam, last_name: @patient.last_name, membrane: @patient.membrane, parity: @patient.parity, station: @patient.station }
    end

    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should show patient" do
    get :show, id: @patient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient
    assert_response :success
  end

  test "should update patient" do
    put :update, id: @patient, patient: { blood_type: @patient.blood_type, comments: @patient.comments, dilation: @patient.dilation, effacement: @patient.effacement, first_name: @patient.first_name, gest_age: @patient.gest_age, gravidity: @patient.gravidity, group_b_strep: @patient.group_b_strep, last_exam: @patient.last_exam, last_name: @patient.last_name, membrane: @patient.membrane, parity: @patient.parity, station: @patient.station }
    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete :destroy, id: @patient
    end

    assert_redirected_to patients_path
  end
end
