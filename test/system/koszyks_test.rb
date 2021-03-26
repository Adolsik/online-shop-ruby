require "application_system_test_case"

class KoszyksTest < ApplicationSystemTestCase
  setup do
    @koszyk = koszyks(:one)
  end

  test "visiting the index" do
    visit koszyks_url
    assert_selector "h1", text: "Koszyks"
  end

  test "creating a Koszyk" do
    visit koszyks_url
    click_on "New Koszyk"

    click_on "Create Koszyk"

    assert_text "Koszyk was successfully created"
    click_on "Back"
  end

  test "updating a Koszyk" do
    visit koszyks_url
    click_on "Edit", match: :first

    click_on "Update Koszyk"

    assert_text "Koszyk was successfully updated"
    click_on "Back"
  end

  test "destroying a Koszyk" do
    visit koszyks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Koszyk was successfully destroyed"
  end
end
