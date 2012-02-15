require 'spec_helper'

describe "cursodisciplinas/new" do
  before(:each) do
    assign(:cursodisciplina, stub_model(Cursodisciplina,
      :curso => nil,
      :disciplina => nil
    ).as_new_record)
  end

  it "renders new cursodisciplina form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cursodisciplinas_path, :method => "post" do
      assert_select "input#cursodisciplina_curso", :name => "cursodisciplina[curso]"
      assert_select "input#cursodisciplina_disciplina", :name => "cursodisciplina[disciplina]"
    end
  end
end
