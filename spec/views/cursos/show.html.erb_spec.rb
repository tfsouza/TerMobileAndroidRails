require 'spec_helper'

describe "cursos/show" do
  before(:each) do
    @curso = assign(:curso, stub_model(Curso,
      :nome => "Nome",
      :turno => "Turno"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Turno/)
  end
end
