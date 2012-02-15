require "spec_helper"

describe AnoletivosController do
  describe "routing" do

    it "routes to #index" do
      get("/anoletivos").should route_to("anoletivos#index")
    end

    it "routes to #new" do
      get("/anoletivos/new").should route_to("anoletivos#new")
    end

    it "routes to #show" do
      get("/anoletivos/1").should route_to("anoletivos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/anoletivos/1/edit").should route_to("anoletivos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/anoletivos").should route_to("anoletivos#create")
    end

    it "routes to #update" do
      put("/anoletivos/1").should route_to("anoletivos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/anoletivos/1").should route_to("anoletivos#destroy", :id => "1")
    end

  end
end
