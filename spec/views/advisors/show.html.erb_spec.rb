require 'rails_helper'

RSpec.describe "advisors/show", type: :view do
  before(:each) do
    @advisor = assign(:advisor, Advisor.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
