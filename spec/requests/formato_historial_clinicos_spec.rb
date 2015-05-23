require 'rails_helper'

RSpec.describe "FormatoHistorialClinicos", type: :request do
  describe "GET /formato_historial_clinicos" do
    it "works! (now write some real specs)" do
      get formato_historial_clinicos_path
      expect(response).to have_http_status(200)
    end
  end
end
