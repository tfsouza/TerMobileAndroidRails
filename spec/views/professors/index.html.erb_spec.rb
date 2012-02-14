require 'spec_helper'

describe "professors/index" do
  before(:each) do
    assign(:professors, [
      stub_model(Professor,
        :matricula => "Matricula",
        :nome => "Nome",
        :endereco => "Endereco",
        :telefone => "Telefone"
      ),
      stub_model(Professor,
        :matricula => "Matricula",
        :nome => "Nome",
        :endereco => "Endereco",
        :telefone => "Telefone"
      )
    ])
  end

  it "renders a list of professors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Matricula".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
  end
end
