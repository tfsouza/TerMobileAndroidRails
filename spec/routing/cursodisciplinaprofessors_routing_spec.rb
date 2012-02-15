require "spec_helper"

describe CursodisciplinaprofessorsController do
  describe "routing" do

    it "routes to #index" do
      get("/cursodisciplinaprofessors").should route_to("cursodisciplinaprofessors#index")
    end

    it "routes to #new" do
      get("/cursodisciplinaprofessors/new").should route_to("cursodisciplinaprofessors#new")
    end

    it "routes to #show" do
      get("/cursodisciplinaprofessors/1").should route_to("cursodisciplinaprofessors#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cursodisciplinaprofessors/1/edit").should route_to("cursodisciplinaprofessors#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cursodisciplinaprofessors").should route_to("cursodisciplinaprofessors#create")
    end

    it "routes to #update" do
      put("/cursodisciplinaprofessors/1").should route_to("cursodisciplinaprofessors#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cursodisciplinaprofessors/1").should route_to("cursodisciplinaprofessors#destroy", :id => "1")
    end

  end
end
