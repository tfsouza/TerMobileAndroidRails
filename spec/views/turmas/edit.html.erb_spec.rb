require 'spec_helper'

describe "turmas/edit" do
  before(:each) do
    @turma = assign(:turma, stub_model(Turma,
      :sigla => "MyString",
      :descricao => "MyString",
      :curso => nil
    ))
  end

  it "renders the edit turma form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => turmas_path(@turma), :method => "post" do
      assert_select "input#turma_sigla", :name => "turma[sigla]"
      assert_select "input#turma_descricao", :name => "turma[descricao]"
      assert_select "input#turma_curso", :name => "turma[curso]"
    end
  end
end
