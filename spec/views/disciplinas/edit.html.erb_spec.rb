require 'spec_helper'

describe "disciplinas/edit" do
  before(:each) do
    @disciplina = assign(:disciplina, stub_model(Disciplina,
      :sigla => "MyString",
      :nome => "MyString"
    ))
  end

  it "renders the edit disciplina form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => disciplinas_path(@disciplina), :method => "post" do
      assert_select "input#disciplina_sigla", :name => "disciplina[sigla]"
      assert_select "input#disciplina_nome", :name => "disciplina[nome]"
    end
  end
end
