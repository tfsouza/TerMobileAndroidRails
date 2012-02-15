require 'spec_helper'

describe "disciplinas/index" do
  before(:each) do
    assign(:disciplinas, [
      stub_model(Disciplina,
        :sigla => "Sigla",
        :nome => "Nome"
      ),
      stub_model(Disciplina,
        :sigla => "Sigla",
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of disciplinas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sigla".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
