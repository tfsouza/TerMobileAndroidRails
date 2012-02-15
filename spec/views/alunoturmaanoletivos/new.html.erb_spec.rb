require 'spec_helper'

describe "alunoturmaanoletivos/new" do
  before(:each) do
    assign(:alunoturmaanoletivo, stub_model(Alunoturmaanoletivo,
      :aluno => nil,
      :turmaanoletivo => nil
    ).as_new_record)
  end

  it "renders new alunoturmaanoletivo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => alunoturmaanoletivos_path, :method => "post" do
      assert_select "input#alunoturmaanoletivo_aluno", :name => "alunoturmaanoletivo[aluno]"
      assert_select "input#alunoturmaanoletivo_turmaanoletivo", :name => "alunoturmaanoletivo[turmaanoletivo]"
    end
  end
end
