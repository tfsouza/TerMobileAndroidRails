require 'spec_helper'

describe "cursodisciplinaprofessoranoletivos/show" do
  before(:each) do
    @cursodisciplinaprofessoranoletivo = assign(:cursodisciplinaprofessoranoletivo, stub_model(Cursodisciplinaprofessoranoletivo,
      :professor => nil,
      :cursodisciplina => nil,
      :anoletivo => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
