require "rails_helper"

RSpec.describe MinutosHabilesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/minutos_habiles").to route_to("minutos_habiles#index")
    end

    it "routes to #new" do
      expect(:get => "/minutos_habiles/new").to route_to("minutos_habiles#new")
    end

    it "routes to #show" do
      expect(:get => "/minutos_habiles/1").to route_to("minutos_habiles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/minutos_habiles/1/edit").to route_to("minutos_habiles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/minutos_habiles").to route_to("minutos_habiles#create")
    end

    it "routes to #update" do
      expect(:put => "/minutos_habiles/1").to route_to("minutos_habiles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/minutos_habiles/1").to route_to("minutos_habiles#destroy", :id => "1")
    end

  end
end
