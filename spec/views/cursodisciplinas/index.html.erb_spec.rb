require 'spec_helper'

describe "cursodisciplinas/index" do
  before(:each) do
    assign(:cursodisciplinas, [
      stub_model(Cursodisciplina,
        :curso => nil,
        :disciplina => nil
      ),
      stub_model(Cursodisciplina,
        :curso => nil,
        :disciplina => nil
      )
    ])
  end

  it "renders a list of cursodisciplinas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
