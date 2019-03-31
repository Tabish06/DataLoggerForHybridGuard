require 'test_helper'

class LogHybridGuardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @log_hybrid_guard = log_hybrid_guards(:one)
  end

  test "should get index" do
    get log_hybrid_guards_url
    assert_response :success
  end

  test "should get new" do
    get new_log_hybrid_guard_url
    assert_response :success
  end

  test "should create log_hybrid_guard" do
    assert_difference('LogHybridGuard.count') do
      post log_hybrid_guards_url, params: { log_hybrid_guard: { app_name: @log_hybrid_guard.app_name, comments: @log_hybrid_guard.comments, working: @log_hybrid_guard.working } }
    end

    assert_redirected_to log_hybrid_guard_url(LogHybridGuard.last)
  end

  test "should show log_hybrid_guard" do
    get log_hybrid_guard_url(@log_hybrid_guard)
    assert_response :success
  end

  test "should get edit" do
    get edit_log_hybrid_guard_url(@log_hybrid_guard)
    assert_response :success
  end

  test "should update log_hybrid_guard" do
    patch log_hybrid_guard_url(@log_hybrid_guard), params: { log_hybrid_guard: { app_name: @log_hybrid_guard.app_name, comments: @log_hybrid_guard.comments, working: @log_hybrid_guard.working } }
    assert_redirected_to log_hybrid_guard_url(@log_hybrid_guard)
  end

  test "should destroy log_hybrid_guard" do
    assert_difference('LogHybridGuard.count', -1) do
      delete log_hybrid_guard_url(@log_hybrid_guard)
    end

    assert_redirected_to log_hybrid_guards_url
  end
end
