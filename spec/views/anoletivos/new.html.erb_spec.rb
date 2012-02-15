require 'spec_helper'

describe "anoletivos/new" do
  before(:each) do
    assign(:anoletivo, stub_model(Anoletivo,
      :ano => "MyString",
      :period => "MyString"
    ).as_new_record)
  end

  it "renders new anoletivo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => anoletivos_path, :method => "post" do
      assert_select "input#anoletivo_ano", :name => "anoletivo[ano]"
      assert_select "input#anoletivo_period", :name => "anoletivo[period]"
    end
  end
end
