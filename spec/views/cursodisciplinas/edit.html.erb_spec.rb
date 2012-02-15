require 'spec_helper'

describe "cursodisciplinas/edit" do
  before(:each) do
    @cursodisciplina = assign(:cursodisciplina, stub_model(Cursodisciplina,
      :curso => nil,
      :disciplina => nil
    ))
  end

  it "renders the edit cursodisciplina form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cursodisciplinas_path(@cursodisciplina), :method => "post" do
      assert_select "input#cursodisciplina_curso", :name => "cursodisciplina[curso]"
      assert_select "input#cursodisciplina_disciplina", :name => "cursodisciplina[disciplina]"
    end
  end
end
