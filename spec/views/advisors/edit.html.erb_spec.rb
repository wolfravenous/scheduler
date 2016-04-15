require 'rails_helper'

RSpec.describe "advisors/edit", type: :view do
  before(:each) do
    @advisor = assign(:advisor, Advisor.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit advisor form" do
    render

    assert_select "form[action=?][method=?]", advisor_path(@advisor), "post" do

      assert_select "input#advisor_name[name=?]", "advisor[name]"
    end
  end
end
