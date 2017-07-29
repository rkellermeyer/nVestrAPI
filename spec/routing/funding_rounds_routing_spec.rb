require "rails_helper"

RSpec.describe FundingRoundsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/funding_rounds").to route_to("funding_rounds#index")
    end


    it "routes to #show" do
      expect(:get => "/funding_rounds/1").to route_to("funding_rounds#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/funding_rounds").to route_to("funding_rounds#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/funding_rounds/1").to route_to("funding_rounds#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/funding_rounds/1").to route_to("funding_rounds#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/funding_rounds/1").to route_to("funding_rounds#destroy", :id => "1")
    end

  end
end
