require "spec_helper"

describe CursodisciplinaprofessoranoletivosController do
  describe "routing" do

    it "routes to #index" do
      get("/cursodisciplinaprofessoranoletivos").should route_to("cursodisciplinaprofessoranoletivos#index")
    end

    it "routes to #new" do
      get("/cursodisciplinaprofessoranoletivos/new").should route_to("cursodisciplinaprofessoranoletivos#new")
    end

    it "routes to #show" do
      get("/cursodisciplinaprofessoranoletivos/1").should route_to("cursodisciplinaprofessoranoletivos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cursodisciplinaprofessoranoletivos/1/edit").should route_to("cursodisciplinaprofessoranoletivos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cursodisciplinaprofessoranoletivos").should route_to("cursodisciplinaprofessoranoletivos#create")
    end

    it "routes to #update" do
      put("/cursodisciplinaprofessoranoletivos/1").should route_to("cursodisciplinaprofessoranoletivos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cursodisciplinaprofessoranoletivos/1").should route_to("cursodisciplinaprofessoranoletivos#destroy", :id => "1")
    end

  end
end
