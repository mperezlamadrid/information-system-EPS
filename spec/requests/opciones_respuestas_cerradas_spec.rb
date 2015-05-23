require 'rails_helper'

RSpec.describe "OpcionesRespuestasCerradas", type: :request do
  describe "GET /opciones_respuestas_cerradas" do
    it "works! (now write some real specs)" do
      get opciones_respuestas_cerradas_path
      expect(response).to have_http_status(200)
    end
  end
end
