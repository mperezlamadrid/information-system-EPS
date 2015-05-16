require "rails_helper"

RSpec.describe DiaHabilsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dia_habils").to route_to("dia_habils#index")
    end

    it "routes to #new" do
      expect(:get => "/dia_habils/new").to route_to("dia_habils#new")
    end

    it "routes to #show" do
      expect(:get => "/dia_habils/1").to route_to("dia_habils#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dia_habils/1/edit").to route_to("dia_habils#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dia_habils").to route_to("dia_habils#create")
    end

    it "routes to #update" do
      expect(:put => "/dia_habils/1").to route_to("dia_habils#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dia_habils/1").to route_to("dia_habils#destroy", :id => "1")
    end

  end
end
