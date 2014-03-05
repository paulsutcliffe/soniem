require 'spec_helper'

describe "formatos/new" do
  before(:each) do
    assign(:formato, stub_model(Formato,
      :pdf => "MyString",
      :titulo => "MyString"
    ).as_new_record)
  end

  it "renders new formato form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", formatos_path, "post" do
      assert_select "input#formato_pdf[name=?]", "formato[pdf]"
      assert_select "input#formato_titulo[name=?]", "formato[titulo]"
    end
  end
end
