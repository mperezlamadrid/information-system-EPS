require "rails_helper"

RSpec.describe OpcionesRespuestasCerradasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/opciones_respuestas_cerradas").to route_to("opciones_respuestas_cerradas#index")
    end

    it "routes to #new" do
      expect(:get => "/opciones_respuestas_cerradas/new").to route_to("opciones_respuestas_cerradas#new")
    end

    it "routes to #show" do
      expect(:get => "/opciones_respuestas_cerradas/1").to route_to("opciones_respuestas_cerradas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/opciones_respuestas_cerradas/1/edit").to route_to("opciones_respuestas_cerradas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/opciones_respuestas_cerradas").to route_to("opciones_respuestas_cerradas#create")
    end

    it "routes to #update" do
      expect(:put => "/opciones_respuestas_cerradas/1").to route_to("opciones_respuestas_cerradas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/opciones_respuestas_cerradas/1").to route_to("opciones_respuestas_cerradas#destroy", :id => "1")
    end

  end
end
