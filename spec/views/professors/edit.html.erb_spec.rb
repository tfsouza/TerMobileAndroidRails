require 'spec_helper'

describe "professors/edit" do
  before(:each) do
    @professor = assign(:professor, stub_model(Professor,
      :matricula => "MyString",
      :nome => "MyString",
      :endereco => "MyString",
      :telefone => "MyString"
    ))
  end

  it "renders the edit professor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => professors_path(@professor), :method => "post" do
      assert_select "input#professor_matricula", :name => "professor[matricula]"
      assert_select "input#professor_nome", :name => "professor[nome]"
      assert_select "input#professor_endereco", :name => "professor[endereco]"
      assert_select "input#professor_telefone", :name => "professor[telefone]"
    end
  end
end
