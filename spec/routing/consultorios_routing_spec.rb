require "rails_helper"

RSpec.describe ConsultoriosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/consultorios").to route_to("consultorios#index")
    end

    it "routes to #new" do
      expect(:get => "/consultorios/new").to route_to("consultorios#new")
    end

    it "routes to #show" do
      expect(:get => "/consultorios/1").to route_to("consultorios#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/consultorios/1/edit").to route_to("consultorios#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/consultorios").to route_to("consultorios#create")
    end

    it "routes to #update" do
      expect(:put => "/consultorios/1").to route_to("consultorios#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/consultorios/1").to route_to("consultorios#destroy", :id => "1")
    end

  end
end
