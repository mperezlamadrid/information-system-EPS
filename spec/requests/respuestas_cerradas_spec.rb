require 'rails_helper'

RSpec.describe "RespuestasCerradas", type: :request do
  describe "GET /respuestas_cerradas" do
    it "works! (now write some real specs)" do
      get respuestas_cerradas_path
      expect(response).to have_http_status(200)
    end
  end
end
