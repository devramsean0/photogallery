require "application_system_test_case"

class PhotosTest < ApplicationSystemTestCase
  setup do
    @photo = photos(:one)
  end

  test "visiting the index" do
    visit photos_url
    assert_selector "h1", text: "Photos"
  end

  test "should create photo" do
    visit photos_url
    click_on "New photo"

    fill_in "Camera", with: @photo.camera
    fill_in "Digitized date", with: @photo.digitized_date
    fill_in "In digest", with: @photo.in_digest
    fill_in "Location", with: @photo.location
    fill_in "Shot date", with: @photo.shot_date
    click_on "Create Photo"

    assert_text "Photo was successfully created"
    click_on "Back"
  end

  test "should update Photo" do
    visit photo_url(@photo)
    click_on "Edit this photo", match: :first

    fill_in "Camera", with: @photo.camera
    fill_in "Digitized date", with: @photo.digitized_date
    fill_in "In digest", with: @photo.in_digest
    fill_in "Location", with: @photo.location
    fill_in "Shot date", with: @photo.shot_date
    click_on "Update Photo"

    assert_text "Photo was successfully updated"
    click_on "Back"
  end

  test "should destroy Photo" do
    visit photo_url(@photo)
    accept_confirm { click_on "Destroy this photo", match: :first }

    assert_text "Photo was successfully destroyed"
  end
end
