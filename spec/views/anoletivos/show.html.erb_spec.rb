require 'spec_helper'

describe "anoletivos/show" do
  before(:each) do
    @anoletivo = assign(:anoletivo, stub_model(Anoletivo,
      :ano => "Ano",
      :period => "Period"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ano/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Period/)
  end
end
