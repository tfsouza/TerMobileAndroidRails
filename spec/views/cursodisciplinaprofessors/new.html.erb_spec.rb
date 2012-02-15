require 'spec_helper'

describe "cursodisciplinaprofessors/new" do
  before(:each) do
    assign(:cursodisciplinaprofessor, stub_model(Cursodisciplinaprofessor,
      :professor => nil,
      :cursodisciplina => nil
    ).as_new_record)
  end

  it "renders new cursodisciplinaprofessor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cursodisciplinaprofessors_path, :method => "post" do
      assert_select "input#cursodisciplinaprofessor_professor", :name => "cursodisciplinaprofessor[professor]"
      assert_select "input#cursodisciplinaprofessor_cursodisciplina", :name => "cursodisciplinaprofessor[cursodisciplina]"
    end
  end
end
