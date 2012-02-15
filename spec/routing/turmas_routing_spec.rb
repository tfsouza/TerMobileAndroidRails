require "spec_helper"

describe TurmasController do
  describe "routing" do

    it "routes to #index" do
      get("/turmas").should route_to("turmas#index")
    end

    it "routes to #new" do
      get("/turmas/new").should route_to("turmas#new")
    end

    it "routes to #show" do
      get("/turmas/1").should route_to("turmas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/turmas/1/edit").should route_to("turmas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/turmas").should route_to("turmas#create")
    end

    it "routes to #update" do
      put("/turmas/1").should route_to("turmas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/turmas/1").should route_to("turmas#destroy", :id => "1")
    end

  end
end
