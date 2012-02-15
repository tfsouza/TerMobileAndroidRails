require 'spec_helper'

describe "turmas/new" do
  before(:each) do
    assign(:turma, stub_model(Turma,
      :sigla => "MyString",
      :descricao => "MyString",
      :curso => nil
    ).as_new_record)
  end

  it "renders new turma form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => turmas_path, :method => "post" do
      assert_select "input#turma_sigla", :name => "turma[sigla]"
      assert_select "input#turma_descricao", :name => "turma[descricao]"
      assert_select "input#turma_curso", :name => "turma[curso]"
    end
  end
end
