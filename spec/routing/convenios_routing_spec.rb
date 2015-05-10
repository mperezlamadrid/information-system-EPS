require "rails_helper"

RSpec.describe ConveniosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/convenios").to route_to("convenios#index")
    end

    it "routes to #new" do
      expect(:get => "/convenios/new").to route_to("convenios#new")
    end

    it "routes to #show" do
      expect(:get => "/convenios/1").to route_to("convenios#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/convenios/1/edit").to route_to("convenios#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/convenios").to route_to("convenios#create")
    end

    it "routes to #update" do
      expect(:put => "/convenios/1").to route_to("convenios#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/convenios/1").to route_to("convenios#destroy", :id => "1")
    end

  end
end
