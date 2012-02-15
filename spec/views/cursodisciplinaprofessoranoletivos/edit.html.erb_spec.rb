require 'spec_helper'

describe "cursodisciplinaprofessoranoletivos/edit" do
  before(:each) do
    @cursodisciplinaprofessoranoletivo = assign(:cursodisciplinaprofessoranoletivo, stub_model(Cursodisciplinaprofessoranoletivo,
      :professor => nil,
      :cursodisciplina => nil,
      :anoletivo => nil
    ))
  end

  it "renders the edit cursodisciplinaprofessoranoletivo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cursodisciplinaprofessoranoletivos_path(@cursodisciplinaprofessoranoletivo), :method => "post" do
      assert_select "input#cursodisciplinaprofessoranoletivo_professor", :name => "cursodisciplinaprofessoranoletivo[professor]"
      assert_select "input#cursodisciplinaprofessoranoletivo_cursodisciplina", :name => "cursodisciplinaprofessoranoletivo[cursodisciplina]"
      assert_select "input#cursodisciplinaprofessoranoletivo_anoletivo", :name => "cursodisciplinaprofessoranoletivo[anoletivo]"
    end
  end
end
