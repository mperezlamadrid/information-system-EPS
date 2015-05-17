require "rails_helper"

RSpec.describe CitaController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/cita").to route_to("cita#index")
    end

    it "routes to #new" do
      expect(:get => "/cita/new").to route_to("cita#new")
    end

    it "routes to #show" do
      expect(:get => "/cita/1").to route_to("cita#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/cita/1/edit").to route_to("cita#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/cita").to route_to("cita#create")
    end

    it "routes to #update" do
      expect(:put => "/cita/1").to route_to("cita#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cita/1").to route_to("cita#destroy", :id => "1")
    end

  end
end
