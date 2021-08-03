require 'test_helper'

class WorkMatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @work_mate = work_mates(:one)
  end

  test "should get index" do
    get work_mates_url
    assert_response :success
  end

  test "should get new" do
    get new_work_mate_url
    assert_response :success
  end

  test "should create work_mate" do
    assert_difference('WorkMate.count') do
      post work_mates_url, params: { work_mate: { producer_id: @work_mate.producer_id, state: @work_mate.state, work_id: @work_mate.work_id } }
    end

    assert_redirected_to work_mate_url(WorkMate.last)
  end

  test "should show work_mate" do
    get work_mate_url(@work_mate)
    assert_response :success
  end

  test "should get edit" do
    get edit_work_mate_url(@work_mate)
    assert_response :success
  end

  test "should update work_mate" do
    patch work_mate_url(@work_mate), params: { work_mate: { producer_id: @work_mate.producer_id, state: @work_mate.state, work_id: @work_mate.work_id } }
    assert_redirected_to work_mate_url(@work_mate)
  end

  test "should destroy work_mate" do
    assert_difference('WorkMate.count', -1) do
      delete work_mate_url(@work_mate)
    end

    assert_redirected_to work_mates_url
  end
end
