require 'rails_helper'

RSpec.describe "Convenios", type: :request do
  describe "GET /convenios" do
    it "works! (now write some real specs)" do
      get convenios_path
      expect(response).to have_http_status(200)
    end
  end
end
