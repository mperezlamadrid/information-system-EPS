require 'rails_helper'

RSpec.describe "HoraHabils", type: :request do
  describe "GET /hora_habils" do
    it "works! (now write some real specs)" do
      get hora_habils_path
      expect(response).to have_http_status(200)
    end
  end
end
