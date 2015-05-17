require 'rails_helper'

RSpec.describe "Consultorios", type: :request do
  describe "GET /consultorios" do
    it "works! (now write some real specs)" do
      get consultorios_path
      expect(response).to have_http_status(200)
    end
  end
end
