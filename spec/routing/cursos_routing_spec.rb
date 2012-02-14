require "spec_helper"

describe CursosController do
  describe "routing" do

    it "routes to #index" do
      get("/cursos").should route_to("cursos#index")
    end

    it "routes to #new" do
      get("/cursos/new").should route_to("cursos#new")
    end

    it "routes to #show" do
      get("/cursos/1").should route_to("cursos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cursos/1/edit").should route_to("cursos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cursos").should route_to("cursos#create")
    end

    it "routes to #update" do
      put("/cursos/1").should route_to("cursos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cursos/1").should route_to("cursos#destroy", :id => "1")
    end

  end
end
