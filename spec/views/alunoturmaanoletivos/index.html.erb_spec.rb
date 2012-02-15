require 'spec_helper'

describe "alunoturmaanoletivos/index" do
  before(:each) do
    assign(:alunoturmaanoletivos, [
      stub_model(Alunoturmaanoletivo,
        :aluno => nil,
        :turmaanoletivo => nil
      ),
      stub_model(Alunoturmaanoletivo,
        :aluno => nil,
        :turmaanoletivo => nil
      )
    ])
  end

  it "renders a list of alunoturmaanoletivos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
