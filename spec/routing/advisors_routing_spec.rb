require "rails_helper"

RSpec.describe AdvisorsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/advisors").to route_to("advisors#index")
    end

    it "routes to #new" do
      expect(:get => "/advisors/new").to route_to("advisors#new")
    end

    it "routes to #show" do
      expect(:get => "/advisors/1").to route_to("advisors#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/advisors/1/edit").to route_to("advisors#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/advisors").to route_to("advisors#create")
    end

    it "routes to #update" do
      expect(:put => "/advisors/1").to route_to("advisors#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/advisors/1").to route_to("advisors#destroy", :id => "1")
    end

  end
end
