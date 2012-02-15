require "spec_helper"

describe AlunosController do
  describe "routing" do

    it "routes to #index" do
      get("/alunos").should route_to("alunos#index")
    end

    it "routes to #new" do
      get("/alunos/new").should route_to("alunos#new")
    end

    it "routes to #show" do
      get("/alunos/1").should route_to("alunos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/alunos/1/edit").should route_to("alunos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/alunos").should route_to("alunos#create")
    end

    it "routes to #update" do
      put("/alunos/1").should route_to("alunos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/alunos/1").should route_to("alunos#destroy", :id => "1")
    end

  end
end
