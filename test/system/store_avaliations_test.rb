require "application_system_test_case"

class StoreAvaliationsTest < ApplicationSystemTestCase
  setup do
    @store_avaliation = store_avaliations(:one)
  end

  test "visiting the index" do
    visit store_avaliations_url
    assert_selector "h1", text: "oi"
  end

  test "creating a Store avaliation" do
    visit store_avaliations_url
    click_on "New Store Avaliation"

    fill_in "Avaliation", with: @store_avaliation.avaliation
    fill_in "Store", with: @store_avaliation.store_id
    fill_in "User", with: @store_avaliation.user_id
    click_on "Create Store avaliation"

    assert_text "Store avaliation was successfully created"
    click_on "Back"
  end

  test "updating a Store avaliation" do
    visit store_avaliations_url
    click_on "Edit", match: :first

    fill_in "Avaliation", with: @store_avaliation.avaliation
    fill_in "Store", with: @store_avaliation.store_id
    fill_in "User", with: @store_avaliation.user_id
    click_on "Update Store avaliation"

    assert_text "Store avaliation was successfully updated"
    click_on "Back"
  end

  test "destroying a Store avaliation" do
    visit store_avaliations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Store avaliation was successfully destroyed"
  end
end
