require 'spec_helper'

describe "turmaanoletivos/new" do
  before(:each) do
    assign(:turmaanoletivo, stub_model(Turmaanoletivo,
      :turma => nil,
      :anoletivo => nil
    ).as_new_record)
  end

  it "renders new turmaanoletivo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => turmaanoletivos_path, :method => "post" do
      assert_select "input#turmaanoletivo_turma", :name => "turmaanoletivo[turma]"
      assert_select "input#turmaanoletivo_anoletivo", :name => "turmaanoletivo[anoletivo]"
    end
  end
end
