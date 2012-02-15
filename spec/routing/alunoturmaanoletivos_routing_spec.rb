require "spec_helper"

describe AlunoturmaanoletivosController do
  describe "routing" do

    it "routes to #index" do
      get("/alunoturmaanoletivos").should route_to("alunoturmaanoletivos#index")
    end

    it "routes to #new" do
      get("/alunoturmaanoletivos/new").should route_to("alunoturmaanoletivos#new")
    end

    it "routes to #show" do
      get("/alunoturmaanoletivos/1").should route_to("alunoturmaanoletivos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/alunoturmaanoletivos/1/edit").should route_to("alunoturmaanoletivos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/alunoturmaanoletivos").should route_to("alunoturmaanoletivos#create")
    end

    it "routes to #update" do
      put("/alunoturmaanoletivos/1").should route_to("alunoturmaanoletivos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/alunoturmaanoletivos/1").should route_to("alunoturmaanoletivos#destroy", :id => "1")
    end

  end
end
