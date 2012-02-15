require 'spec_helper'

describe "turmas/show" do
  before(:each) do
    @turma = assign(:turma, stub_model(Turma,
      :sigla => "Sigla",
      :descricao => "Descricao",
      :curso => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sigla/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descricao/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
