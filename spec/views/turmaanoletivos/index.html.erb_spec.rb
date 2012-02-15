require 'spec_helper'

describe "turmaanoletivos/index" do
  before(:each) do
    assign(:turmaanoletivos, [
      stub_model(Turmaanoletivo,
        :turma => nil,
        :anoletivo => nil
      ),
      stub_model(Turmaanoletivo,
        :turma => nil,
        :anoletivo => nil
      )
    ])
  end

  it "renders a list of turmaanoletivos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
