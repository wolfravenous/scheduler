require 'rails_helper'

RSpec.describe "proctors/edit", type: :view do
  before(:each) do
    @proctor = assign(:proctor, Proctor.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit proctor form" do
    render

    assert_select "form[action=?][method=?]", proctor_path(@proctor), "post" do

      assert_select "input#proctor_name[name=?]", "proctor[name]"
    end
  end
end
