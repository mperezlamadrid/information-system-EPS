require 'rails_helper'

RSpec.describe "DiaHabils", type: :request do
  describe "GET /dia_habils" do
    it "works! (now write some real specs)" do
      get dia_habils_path
      expect(response).to have_http_status(200)
    end
  end
end
