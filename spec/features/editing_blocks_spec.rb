require "rails_helper"

RSpec.feature "Users can edit existing blocks" do
  before do
    FactoryGirl.create(:block, day: "Monday AM")

    visit "/"
    click_link "Monday AM"
    click_link "Edit Block"
  end
   
  scenario "with valid attributes" do
    fill_in "Day", with: "Monday PM"
    click_button "Update Block"

    expect(page).to have_content "Block was successfully updated."
    expect(page).to have_content "Monday PM"
  end
  scenario "when providing invalid attributes" do
    fill_in "Day", with: ""
    click_button "Update Block"

    expect(page).to have_content "error prohibited this block from being saved"
  end



end