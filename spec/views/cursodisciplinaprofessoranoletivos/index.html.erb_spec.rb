require 'spec_helper'

describe "cursodisciplinaprofessoranoletivos/index" do
  before(:each) do
    assign(:cursodisciplinaprofessoranoletivos, [
      stub_model(Cursodisciplinaprofessoranoletivo,
        :professor => nil,
        :cursodisciplina => nil,
        :anoletivo => nil
      ),
      stub_model(Cursodisciplinaprofessoranoletivo,
        :professor => nil,
        :cursodisciplina => nil,
        :anoletivo => nil
      )
    ])
  end

  it "renders a list of cursodisciplinaprofessoranoletivos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
