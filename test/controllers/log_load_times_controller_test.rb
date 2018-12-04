require 'test_helper'

class LogLoadTimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @log_load_time = log_load_times(:one)
  end

  test "should get index" do
    get log_load_times_url
    assert_response :success
  end

  test "should get new" do
    get new_log_load_time_url
    assert_response :success
  end

  test "should create log_load_time" do
    assert_difference('LogLoadTime.count') do
      post log_load_times_url, params: { log_load_time: {  } }
    end

    assert_redirected_to log_load_time_url(LogLoadTime.last)
  end

  test "should show log_load_time" do
    get log_load_time_url(@log_load_time)
    assert_response :success
  end

  test "should get edit" do
    get edit_log_load_time_url(@log_load_time)
    assert_response :success
  end

  test "should update log_load_time" do
    patch log_load_time_url(@log_load_time), params: { log_load_time: {  } }
    assert_redirected_to log_load_time_url(@log_load_time)
  end

  test "should destroy log_load_time" do
    assert_difference('LogLoadTime.count', -1) do
      delete log_load_time_url(@log_load_time)
    end

    assert_redirected_to log_load_times_url
  end
end
