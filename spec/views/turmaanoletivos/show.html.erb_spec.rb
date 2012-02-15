require 'spec_helper'

describe "turmaanoletivos/show" do
  before(:each) do
    @turmaanoletivo = assign(:turmaanoletivo, stub_model(Turmaanoletivo,
      :turma => nil,
      :anoletivo => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
