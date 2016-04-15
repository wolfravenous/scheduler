require 'rails_helper'

RSpec.describe "blocks/index", type: :view do
  before(:each) do
    assign(:blocks, [
      Block.create!(
        :day => "Day",
        :time => "Time"
      ),
      Block.create!(
        :day => "Day",
        :time => "Time"
      )
    ])
  end

  it "renders a list of blocks" do
    render
    assert_select "tr>td", :text => "Day".to_s, :count => 2
    assert_select "tr>td", :text => "Time".to_s, :count => 2
  end
end
