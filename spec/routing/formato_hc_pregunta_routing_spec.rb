require "rails_helper"

RSpec.describe FormatoHcPreguntaController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/formato_hc_pregunta").to route_to("formato_hc_pregunta#index")
    end

    it "routes to #new" do
      expect(:get => "/formato_hc_pregunta/new").to route_to("formato_hc_pregunta#new")
    end

    it "routes to #show" do
      expect(:get => "/formato_hc_pregunta/1").to route_to("formato_hc_pregunta#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/formato_hc_pregunta/1/edit").to route_to("formato_hc_pregunta#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/formato_hc_pregunta").to route_to("formato_hc_pregunta#create")
    end

    it "routes to #update" do
      expect(:put => "/formato_hc_pregunta/1").to route_to("formato_hc_pregunta#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/formato_hc_pregunta/1").to route_to("formato_hc_pregunta#destroy", :id => "1")
    end

  end
end
