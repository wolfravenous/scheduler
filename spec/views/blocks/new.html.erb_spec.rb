require 'rails_helper'

RSpec.describe "blocks/new", type: :view do
  before(:each) do
    assign(:block, Block.new(
      :day => "MyString",
      :time => "MyString"
    ))
  end

  it "renders new block form" do
    render

    assert_select "form[action=?][method=?]", blocks_path, "post" do

      assert_select "input#block_day[name=?]", "block[day]"

      assert_select "input#block_time[name=?]", "block[time]"
    end
  end
end
