require 'rails_helper'

RSpec.describe "blocks/show", type: :view do
  before(:each) do
    @block = assign(:block, Block.create!(
      :day => "Day",
      :time => "Time"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Day/)
    expect(rendered).to match(/Time/)
  end
end
