require "rails_helper"

RSpec.describe RespuestasCerradasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/respuestas_cerradas").to route_to("respuestas_cerradas#index")
    end

    it "routes to #new" do
      expect(:get => "/respuestas_cerradas/new").to route_to("respuestas_cerradas#new")
    end

    it "routes to #show" do
      expect(:get => "/respuestas_cerradas/1").to route_to("respuestas_cerradas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/respuestas_cerradas/1/edit").to route_to("respuestas_cerradas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/respuestas_cerradas").to route_to("respuestas_cerradas#create")
    end

    it "routes to #update" do
      expect(:put => "/respuestas_cerradas/1").to route_to("respuestas_cerradas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/respuestas_cerradas/1").to route_to("respuestas_cerradas#destroy", :id => "1")
    end

  end
end
