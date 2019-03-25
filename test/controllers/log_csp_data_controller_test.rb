require 'test_helper'

class LogCspDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @log_csp_datum = log_csp_data(:one)
  end

  test "should get index" do
    get log_csp_data_url
    assert_response :success
  end

  test "should get new" do
    get new_log_csp_datum_url
    assert_response :success
  end

  test "should create log_csp_datum" do
    assert_difference('LogCspDatum.count') do
      post log_csp_data_url, params: { log_csp_datum: { appname: @log_csp_datum.appname, errors: @log_csp_datum.errors } }
    end

    assert_redirected_to log_csp_datum_url(LogCspDatum.last)
  end

  test "should show log_csp_datum" do
    get log_csp_datum_url(@log_csp_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_log_csp_datum_url(@log_csp_datum)
    assert_response :success
  end

  test "should update log_csp_datum" do
    patch log_csp_datum_url(@log_csp_datum), params: { log_csp_datum: { appname: @log_csp_datum.appname, errors: @log_csp_datum.errors } }
    assert_redirected_to log_csp_datum_url(@log_csp_datum)
  end

  test "should destroy log_csp_datum" do
    assert_difference('LogCspDatum.count', -1) do
      delete log_csp_datum_url(@log_csp_datum)
    end

    assert_redirected_to log_csp_data_url
  end
end
