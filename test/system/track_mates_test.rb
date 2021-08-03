require "application_system_test_case"

class TrackMatesTest < ApplicationSystemTestCase
  setup do
    @track_mate = track_mates(:one)
  end

  test "visiting the index" do
    visit track_mates_url
    assert_selector "h1", text: "Track Mates"
  end

  test "creating a Track mate" do
    visit track_mates_url
    click_on "New Track Mate"

    fill_in "Designer", with: @track_mate.designer_id
    fill_in "State", with: @track_mate.state
    fill_in "Track", with: @track_mate.track_id
    click_on "Create Track mate"

    assert_text "Track mate was successfully created"
    click_on "Back"
  end

  test "updating a Track mate" do
    visit track_mates_url
    click_on "Edit", match: :first

    fill_in "Designer", with: @track_mate.designer_id
    fill_in "State", with: @track_mate.state
    fill_in "Track", with: @track_mate.track_id
    click_on "Update Track mate"

    assert_text "Track mate was successfully updated"
    click_on "Back"
  end

  test "destroying a Track mate" do
    visit track_mates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Track mate was successfully destroyed"
  end
end
