require 'spec_helper'

describe "alunoturmaanoletivos/show" do
  before(:each) do
    @alunoturmaanoletivo = assign(:alunoturmaanoletivo, stub_model(Alunoturmaanoletivo,
      :aluno => nil,
      :turmaanoletivo => nil
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
