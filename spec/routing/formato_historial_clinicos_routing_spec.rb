require "rails_helper"

RSpec.describe FormatoHistorialClinicosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/formato_historial_clinicos").to route_to("formato_historial_clinicos#index")
    end

    it "routes to #new" do
      expect(:get => "/formato_historial_clinicos/new").to route_to("formato_historial_clinicos#new")
    end

    it "routes to #show" do
      expect(:get => "/formato_historial_clinicos/1").to route_to("formato_historial_clinicos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/formato_historial_clinicos/1/edit").to route_to("formato_historial_clinicos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/formato_historial_clinicos").to route_to("formato_historial_clinicos#create")
    end

    it "routes to #update" do
      expect(:put => "/formato_historial_clinicos/1").to route_to("formato_historial_clinicos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/formato_historial_clinicos/1").to route_to("formato_historial_clinicos#destroy", :id => "1")
    end

  end
end
