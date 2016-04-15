require 'rails_helper'

RSpec.describe "proctors/show", type: :view do
  before(:each) do
    @proctor = assign(:proctor, Proctor.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
