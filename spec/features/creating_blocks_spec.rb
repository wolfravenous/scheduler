require "rails_helper"

RSpec.feature "Users can create new blocks" do

  before do
    visit "/"
    click_link "New Block"
  end
  
  scenario "with valid attributes" do
    fill_in "Day", with: "Monday AM"
    fill_in "Time", with: "11:40 - 12:10"
    click_button "Create Block"

    expect(page).to have_content "Block was successfully created."

    block = Block.find_by(day: "Monday AM")
    expect(page.current_url).to eq block_url(block)

    title = "Monday AM - Blocks - Scheduler"
    expect(page).to have_title title
  end

  scenario "when providing invalid attributes" do
    click_button "Create Block"

    expect(page).to have_content "error prohibited this block from being saved"
    expect(page).to have_content "Day can't be blank"
  end

end
