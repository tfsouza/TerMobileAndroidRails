require 'spec_helper'

describe "turmaanoletivos/edit" do
  before(:each) do
    @turmaanoletivo = assign(:turmaanoletivo, stub_model(Turmaanoletivo,
      :turma => nil,
      :anoletivo => nil
    ))
  end

  it "renders the edit turmaanoletivo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => turmaanoletivos_path(@turmaanoletivo), :method => "post" do
      assert_select "input#turmaanoletivo_turma", :name => "turmaanoletivo[turma]"
      assert_select "input#turmaanoletivo_anoletivo", :name => "turmaanoletivo[anoletivo]"
    end
  end
end
