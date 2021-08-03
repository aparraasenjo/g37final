require "application_system_test_case"

class WorkMatesTest < ApplicationSystemTestCase
  setup do
    @work_mate = work_mates(:one)
  end

  test "visiting the index" do
    visit work_mates_url
    assert_selector "h1", text: "Work Mates"
  end

  test "creating a Work mate" do
    visit work_mates_url
    click_on "New Work Mate"

    fill_in "Producer", with: @work_mate.producer_id
    fill_in "State", with: @work_mate.state
    fill_in "Work", with: @work_mate.work_id
    click_on "Create Work mate"

    assert_text "Work mate was successfully created"
    click_on "Back"
  end

  test "updating a Work mate" do
    visit work_mates_url
    click_on "Edit", match: :first

    fill_in "Producer", with: @work_mate.producer_id
    fill_in "State", with: @work_mate.state
    fill_in "Work", with: @work_mate.work_id
    click_on "Update Work mate"

    assert_text "Work mate was successfully updated"
    click_on "Back"
  end

  test "destroying a Work mate" do
    visit work_mates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Work mate was successfully destroyed"
  end
end
