require "spec_helper"

describe TurmaanoletivosController do
  describe "routing" do

    it "routes to #index" do
      get("/turmaanoletivos").should route_to("turmaanoletivos#index")
    end

    it "routes to #new" do
      get("/turmaanoletivos/new").should route_to("turmaanoletivos#new")
    end

    it "routes to #show" do
      get("/turmaanoletivos/1").should route_to("turmaanoletivos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/turmaanoletivos/1/edit").should route_to("turmaanoletivos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/turmaanoletivos").should route_to("turmaanoletivos#create")
    end

    it "routes to #update" do
      put("/turmaanoletivos/1").should route_to("turmaanoletivos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/turmaanoletivos/1").should route_to("turmaanoletivos#destroy", :id => "1")
    end

  end
end
