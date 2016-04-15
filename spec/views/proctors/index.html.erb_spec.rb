require 'rails_helper'

RSpec.describe "proctors/index", type: :view do
  before(:each) do
    assign(:proctors, [
      Proctor.create!(
        :name => "Name"
      ),
      Proctor.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of proctors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
