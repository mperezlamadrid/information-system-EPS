require 'rails_helper'

RSpec.describe "FormatoHcPregunta", type: :request do
  describe "GET /formato_hc_pregunta" do
    it "works! (now write some real specs)" do
      get formato_hc_pregunta_path
      expect(response).to have_http_status(200)
    end
  end
end
