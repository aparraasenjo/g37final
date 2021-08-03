require 'test_helper'

class TrackMatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @track_mate = track_mates(:one)
  end

  test "should get index" do
    get track_mates_url
    assert_response :success
  end

  test "should get new" do
    get new_track_mate_url
    assert_response :success
  end

  test "should create track_mate" do
    assert_difference('TrackMate.count') do
      post track_mates_url, params: { track_mate: { designer_id: @track_mate.designer_id, state: @track_mate.state, track_id: @track_mate.track_id } }
    end

    assert_redirected_to track_mate_url(TrackMate.last)
  end

  test "should show track_mate" do
    get track_mate_url(@track_mate)
    assert_response :success
  end

  test "should get edit" do
    get edit_track_mate_url(@track_mate)
    assert_response :success
  end

  test "should update track_mate" do
    patch track_mate_url(@track_mate), params: { track_mate: { designer_id: @track_mate.designer_id, state: @track_mate.state, track_id: @track_mate.track_id } }
    assert_redirected_to track_mate_url(@track_mate)
  end

  test "should destroy track_mate" do
    assert_difference('TrackMate.count', -1) do
      delete track_mate_url(@track_mate)
    end

    assert_redirected_to track_mates_url
  end
end
