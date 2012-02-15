require 'spec_helper'

describe "cursodisciplinaprofessors/index" do
  before(:each) do
    assign(:cursodisciplinaprofessors, [
      stub_model(Cursodisciplinaprofessor,
        :professor => nil,
        :cursodisciplina => nil
      ),
      stub_model(Cursodisciplinaprofessor,
        :professor => nil,
        :cursodisciplina => nil
      )
    ])
  end

  it "renders a list of cursodisciplinaprofessors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
