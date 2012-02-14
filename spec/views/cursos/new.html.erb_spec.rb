require 'spec_helper'

describe "cursos/new" do
  before(:each) do
    assign(:curso, stub_model(Curso,
      :nome => "MyString",
      :turno => "MyString"
    ).as_new_record)
  end

  it "renders new curso form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cursos_path, :method => "post" do
      assert_select "input#curso_nome", :name => "curso[nome]"
      assert_select "input#curso_turno", :name => "curso[turno]"
    end
  end
end
