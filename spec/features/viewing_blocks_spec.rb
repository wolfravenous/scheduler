require "rails_helper"

RSpec.feature "Users can view blocks" do
  scenario "with the block details" do
    block = FactoryGirl.create(:block, day: "Monday AM")

    visit "/"
    click_link "Monday AM"
    expect(page.current_url).to eq block_url(block)
  end
end