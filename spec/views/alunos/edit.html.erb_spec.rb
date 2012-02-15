require 'spec_helper'

describe "alunos/edit" do
  before(:each) do
    @aluno = assign(:aluno, stub_model(Aluno,
      :matricula => "MyString",
      :nome => "MyString",
      :turma => nil
    ))
  end

  it "renders the edit aluno form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => alunos_path(@aluno), :method => "post" do
      assert_select "input#aluno_matricula", :name => "aluno[matricula]"
      assert_select "input#aluno_nome", :name => "aluno[nome]"
      assert_select "input#aluno_turma", :name => "aluno[turma]"
    end
  end
end
