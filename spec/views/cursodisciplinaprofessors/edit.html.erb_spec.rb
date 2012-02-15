require 'spec_helper'

describe "cursodisciplinaprofessors/edit" do
  before(:each) do
    @cursodisciplinaprofessor = assign(:cursodisciplinaprofessor, stub_model(Cursodisciplinaprofessor,
      :professor => nil,
      :cursodisciplina => nil
    ))
  end

  it "renders the edit cursodisciplinaprofessor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cursodisciplinaprofessors_path(@cursodisciplinaprofessor), :method => "post" do
      assert_select "input#cursodisciplinaprofessor_professor", :name => "cursodisciplinaprofessor[professor]"
      assert_select "input#cursodisciplinaprofessor_cursodisciplina", :name => "cursodisciplinaprofessor[cursodisciplina]"
    end
  end
end
