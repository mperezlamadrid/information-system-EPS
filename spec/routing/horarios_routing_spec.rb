require "rails_helper"

RSpec.describe HorariosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/horarios").to route_to("horarios#index")
    end

    it "routes to #new" do
      expect(:get => "/horarios/new").to route_to("horarios#new")
    end

    it "routes to #show" do
      expect(:get => "/horarios/1").to route_to("horarios#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/horarios/1/edit").to route_to("horarios#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/horarios").to route_to("horarios#create")
    end

    it "routes to #update" do
      expect(:put => "/horarios/1").to route_to("horarios#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/horarios/1").to route_to("horarios#destroy", :id => "1")
    end

  end
end
