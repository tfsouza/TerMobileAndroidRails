require 'spec_helper'

describe "professors/show" do
  before(:each) do
    @professor = assign(:professor, stub_model(Professor,
      :matricula => "Matricula",
      :nome => "Nome",
      :endereco => "Endereco",
      :telefone => "Telefone"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Matricula/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Endereco/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Telefone/)
  end
end
