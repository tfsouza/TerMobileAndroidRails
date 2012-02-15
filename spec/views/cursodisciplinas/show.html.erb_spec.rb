require 'spec_helper'

describe "cursodisciplinas/show" do
  before(:each) do
    @cursodisciplina = assign(:cursodisciplina, stub_model(Cursodisciplina,
      :curso => nil,
      :disciplina => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
