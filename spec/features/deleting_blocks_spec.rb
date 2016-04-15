require "rails_helper"

RSpec.feature "Users can delete blocks" do
  scenario "successfully" do
    FactoryGirl.create(:block, day: "Monday AM")

    visit "/"
    click_link "Monday AM"
    click_link "Delete Block"

    expect(page).to have_content "Block was successfully destroyed"
    expect(page.current_url).to eq blocks_url
    expect(page).to have_no_content "Monday AM"
  end
end