require "rails_helper"

RSpec.describe HoraHabilsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/hora_habils").to route_to("hora_habils#index")
    end

    it "routes to #new" do
      expect(:get => "/hora_habils/new").to route_to("hora_habils#new")
    end

    it "routes to #show" do
      expect(:get => "/hora_habils/1").to route_to("hora_habils#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/hora_habils/1/edit").to route_to("hora_habils#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/hora_habils").to route_to("hora_habils#create")
    end

    it "routes to #update" do
      expect(:put => "/hora_habils/1").to route_to("hora_habils#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/hora_habils/1").to route_to("hora_habils#destroy", :id => "1")
    end

  end
end
