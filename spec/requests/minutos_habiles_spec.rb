require 'rails_helper'

RSpec.describe "MinutosHabiles", type: :request do
  describe "GET /minutos_habiles" do
    it "works! (now write some real specs)" do
      get minutos_habiles_path
      expect(response).to have_http_status(200)
    end
  end
end
