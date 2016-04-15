require 'rails_helper'

RSpec.describe "blocks/edit", type: :view do
  before(:each) do
    @block = assign(:block, Block.create!(
      :day => "MyString",
      :time => "MyString"
    ))
  end

  it "renders the edit block form" do
    render

    assert_select "form[action=?][method=?]", block_path(@block), "post" do

      assert_select "input#block_day[name=?]", "block[day]"

      assert_select "input#block_time[name=?]", "block[time]"
    end
  end
end
