require "application_system_test_case"

class LicensePlatesTest < ApplicationSystemTestCase
  setup do
    @license_plate = license_plates(:one)
  end

  test "visiting the index" do
    visit license_plates_url
    assert_selector "h1", text: "License Plates"
  end

  test "creating a License plate" do
    visit license_plates_url
    click_on "New License Plate"

    fill_in "Code", with: @license_plate.code
    fill_in "Model", with: @license_plate.model
    fill_in "Owner", with: @license_plate.owner
    fill_in "Year", with: @license_plate.year
    click_on "Create License plate"

    assert_text "License plate was successfully created"
    click_on "Back"
  end

  test "updating a License plate" do
    visit license_plates_url
    click_on "Edit", match: :first

    fill_in "Code", with: @license_plate.code
    fill_in "Model", with: @license_plate.model
    fill_in "Owner", with: @license_plate.owner
    fill_in "Year", with: @license_plate.year
    click_on "Update License plate"

    assert_text "License plate was successfully updated"
    click_on "Back"
  end

  test "destroying a License plate" do
    visit license_plates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "License plate was successfully destroyed"
  end
end
