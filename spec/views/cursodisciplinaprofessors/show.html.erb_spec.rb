require 'spec_helper'

describe "cursodisciplinaprofessors/show" do
  before(:each) do
    @cursodisciplinaprofessor = assign(:cursodisciplinaprofessor, stub_model(Cursodisciplinaprofessor,
      :professor => nil,
      :cursodisciplina => nil
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
