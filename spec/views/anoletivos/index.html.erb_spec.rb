require 'spec_helper'

describe "anoletivos/index" do
  before(:each) do
    assign(:anoletivos, [
      stub_model(Anoletivo,
        :ano => "Ano",
        :period => "Period"
      ),
      stub_model(Anoletivo,
        :ano => "Ano",
        :period => "Period"
      )
    ])
  end

  it "renders a list of anoletivos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ano".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Period".to_s, :count => 2
  end
end
