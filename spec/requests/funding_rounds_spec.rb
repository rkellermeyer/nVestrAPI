require 'rails_helper'

RSpec.describe "FundingRounds", type: :request do
  describe "GET /funding_rounds" do
    it "works! (now write some real specs)" do
      get funding_rounds_path
      expect(response).to have_http_status(200)
    end
  end
end
