require "spec_helper"

describe CursodisciplinasController do
  describe "routing" do

    it "routes to #index" do
      get("/cursodisciplinas").should route_to("cursodisciplinas#index")
    end

    it "routes to #new" do
      get("/cursodisciplinas/new").should route_to("cursodisciplinas#new")
    end

    it "routes to #show" do
      get("/cursodisciplinas/1").should route_to("cursodisciplinas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cursodisciplinas/1/edit").should route_to("cursodisciplinas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cursodisciplinas").should route_to("cursodisciplinas#create")
    end

    it "routes to #update" do
      put("/cursodisciplinas/1").should route_to("cursodisciplinas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cursodisciplinas/1").should route_to("cursodisciplinas#destroy", :id => "1")
    end

  end
end
