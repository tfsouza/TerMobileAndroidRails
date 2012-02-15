require 'spec_helper'

describe "disciplinas/new" do
  before(:each) do
    assign(:disciplina, stub_model(Disciplina,
      :sigla => "MyString",
      :nome => "MyString"
    ).as_new_record)
  end

  it "renders new disciplina form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => disciplinas_path, :method => "post" do
      assert_select "input#disciplina_sigla", :name => "disciplina[sigla]"
      assert_select "input#disciplina_nome", :name => "disciplina[nome]"
    end
  end
end
