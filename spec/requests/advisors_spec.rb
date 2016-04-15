require 'rails_helper'

RSpec.describe "Advisors", type: :request do
  describe "GET /advisors" do
    it "works! (now write some real specs)" do
      get advisors_path
      expect(response).to have_http_status(200)
    end
  end
end
