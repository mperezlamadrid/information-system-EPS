require "rails_helper"

RSpec.describe PreguntaController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pregunta").to route_to("pregunta#index")
    end

    it "routes to #new" do
      expect(:get => "/pregunta/new").to route_to("pregunta#new")
    end

    it "routes to #show" do
      expect(:get => "/pregunta/1").to route_to("pregunta#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pregunta/1/edit").to route_to("pregunta#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pregunta").to route_to("pregunta#create")
    end

    it "routes to #update" do
      expect(:put => "/pregunta/1").to route_to("pregunta#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pregunta/1").to route_to("pregunta#destroy", :id => "1")
    end

  end
end
