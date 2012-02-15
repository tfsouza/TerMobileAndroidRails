require 'spec_helper'

describe "cursodisciplinaprofessoranoletivos/new" do
  before(:each) do
    assign(:cursodisciplinaprofessoranoletivo, stub_model(Cursodisciplinaprofessoranoletivo,
      :professor => nil,
      :cursodisciplina => nil,
      :anoletivo => nil
    ).as_new_record)
  end

  it "renders new cursodisciplinaprofessoranoletivo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cursodisciplinaprofessoranoletivos_path, :method => "post" do
      assert_select "input#cursodisciplinaprofessoranoletivo_professor", :name => "cursodisciplinaprofessoranoletivo[professor]"
      assert_select "input#cursodisciplinaprofessoranoletivo_cursodisciplina", :name => "cursodisciplinaprofessoranoletivo[cursodisciplina]"
      assert_select "input#cursodisciplinaprofessoranoletivo_anoletivo", :name => "cursodisciplinaprofessoranoletivo[anoletivo]"
    end
  end
end
