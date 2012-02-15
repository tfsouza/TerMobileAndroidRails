require "spec_helper"

describe DisciplinasController do
  describe "routing" do

    it "routes to #index" do
      get("/disciplinas").should route_to("disciplinas#index")
    end

    it "routes to #new" do
      get("/disciplinas/new").should route_to("disciplinas#new")
    end

    it "routes to #show" do
      get("/disciplinas/1").should route_to("disciplinas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/disciplinas/1/edit").should route_to("disciplinas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/disciplinas").should route_to("disciplinas#create")
    end

    it "routes to #update" do
      put("/disciplinas/1").should route_to("disciplinas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/disciplinas/1").should route_to("disciplinas#destroy", :id => "1")
    end

  end
end
