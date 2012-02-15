require 'spec_helper'

describe "anoletivos/edit" do
  before(:each) do
    @anoletivo = assign(:anoletivo, stub_model(Anoletivo,
      :ano => "MyString",
      :period => "MyString"
    ))
  end

  it "renders the edit anoletivo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => anoletivos_path(@anoletivo), :method => "post" do
      assert_select "input#anoletivo_ano", :name => "anoletivo[ano]"
      assert_select "input#anoletivo_period", :name => "anoletivo[period]"
    end
  end
end
