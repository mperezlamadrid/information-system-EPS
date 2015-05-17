require 'rails_helper'

RSpec.describe "Horarios", type: :request do
  describe "GET /horarios" do
    it "works! (now write some real specs)" do
      get horarios_path
      expect(response).to have_http_status(200)
    end
  end
end
