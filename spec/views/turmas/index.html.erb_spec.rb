require 'spec_helper'

describe "turmas/index" do
  before(:each) do
    assign(:turmas, [
      stub_model(Turma,
        :sigla => "Sigla",
        :descricao => "Descricao",
        :curso => nil
      ),
      stub_model(Turma,
        :sigla => "Sigla",
        :descricao => "Descricao",
        :curso => nil
      )
    ])
  end

  it "renders a list of turmas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sigla".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
