require 'spec_helper'

describe "cursos/edit" do
  before(:each) do
    @curso = assign(:curso, stub_model(Curso,
      :nome => "MyString",
      :turno => "MyString"
    ))
  end

  it "renders the edit curso form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cursos_path(@curso), :method => "post" do
      assert_select "input#curso_nome", :name => "curso[nome]"
      assert_select "input#curso_turno", :name => "curso[turno]"
    end
  end
end
