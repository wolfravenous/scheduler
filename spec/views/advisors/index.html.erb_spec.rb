require 'rails_helper'

RSpec.describe "advisors/index", type: :view do
  before(:each) do
    assign(:advisors, [
      Advisor.create!(
        :name => "Name"
      ),
      Advisor.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of advisors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
