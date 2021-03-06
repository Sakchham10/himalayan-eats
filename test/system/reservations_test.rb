require "application_system_test_case"

class ReservationsTest < ApplicationSystemTestCase
  setup do
    @reservation = reservations(:one)
  end

  test "visiting the index" do
    visit reservations_url
    assert_selector "h1", text: "Reservations"
  end

  test "creating a Reservation" do
    visit reservations_url
    click_on "New Reservation"

    fill_in "First name", with: @reservation.first_name
    fill_in "Index", with: @reservation.index
    fill_in "Last name", with: @reservation.last_name
    fill_in "Table num", with: @reservation.table_num
    fill_in "Time until", with: @reservation.time_until
    click_on "Create Reservation"

    assert_text "Reservation was successfully created"
    click_on "Back"
  end

  test "updating a Reservation" do
    visit reservations_url
    click_on "Edit", match: :first

    fill_in "First name", with: @reservation.first_name
    fill_in "Index", with: @reservation.index
    fill_in "Last name", with: @reservation.last_name
    fill_in "Table num", with: @reservation.table_num
    fill_in "Time until", with: @reservation.time_until
    click_on "Update Reservation"

    assert_text "Reservation was successfully updated"
    click_on "Back"
  end

  test "destroying a Reservation" do
    visit reservations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reservation was successfully destroyed"
  end
end
