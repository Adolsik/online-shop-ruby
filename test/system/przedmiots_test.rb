require "application_system_test_case"

class PrzedmiotsTest < ApplicationSystemTestCase
  setup do
    @przedmiot = przedmiots(:one)
  end

  test "visiting the index" do
    visit przedmiots_url
    assert_selector "h1", text: "Przedmiots"
  end

  test "creating a Przedmiot" do
    visit przedmiots_url
    click_on "New Przedmiot"

    fill_in "Brand", with: @przedmiot.brand
    fill_in "Conditon", with: @przedmiot.conditon
    fill_in "Description", with: @przedmiot.description
    fill_in "Model", with: @przedmiot.model
    fill_in "Price", with: @przedmiot.price
    fill_in "Title", with: @przedmiot.title
    click_on "Create Przedmiot"

    assert_text "Przedmiot was successfully created"
    click_on "Back"
  end

  test "updating a Przedmiot" do
    visit przedmiots_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @przedmiot.brand
    fill_in "Conditon", with: @przedmiot.conditon
    fill_in "Description", with: @przedmiot.description
    fill_in "Model", with: @przedmiot.model
    fill_in "Price", with: @przedmiot.price
    fill_in "Title", with: @przedmiot.title
    click_on "Update Przedmiot"

    assert_text "Przedmiot was successfully updated"
    click_on "Back"
  end

  test "destroying a Przedmiot" do
    visit przedmiots_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Przedmiot was successfully destroyed"
  end
end
