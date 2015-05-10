require "rails_helper"

RSpec.describe PacientesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pacientes").to route_to("pacientes#index")
    end

    it "routes to #new" do
      expect(:get => "/pacientes/new").to route_to("pacientes#new")
    end

    it "routes to #show" do
      expect(:get => "/pacientes/1").to route_to("pacientes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pacientes/1/edit").to route_to("pacientes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pacientes").to route_to("pacientes#create")
    end

    it "routes to #update" do
      expect(:put => "/pacientes/1").to route_to("pacientes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pacientes/1").to route_to("pacientes#destroy", :id => "1")
    end

  end
end
