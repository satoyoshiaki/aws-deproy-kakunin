require "application_system_test_case"

class AwsdesTest < ApplicationSystemTestCase
  setup do
    @awsde = awsdes(:one)
  end

  test "visiting the index" do
    visit awsdes_url
    assert_selector "h1", text: "Awsdes"
  end

  test "creating a Awsde" do
    visit awsdes_url
    click_on "New Awsde"

    fill_in "Context", with: @awsde.context
    fill_in "Title", with: @awsde.title
    click_on "Create Awsde"

    assert_text "Awsde was successfully created"
    click_on "Back"
  end

  test "updating a Awsde" do
    visit awsdes_url
    click_on "Edit", match: :first

    fill_in "Context", with: @awsde.context
    fill_in "Title", with: @awsde.title
    click_on "Update Awsde"

    assert_text "Awsde was successfully updated"
    click_on "Back"
  end

  test "destroying a Awsde" do
    visit awsdes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Awsde was successfully destroyed"
  end
end
