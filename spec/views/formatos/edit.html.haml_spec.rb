require 'spec_helper'

describe "formatos/edit" do
  before(:each) do
    @formato = assign(:formato, stub_model(Formato,
      :pdf => "MyString",
      :titulo => "MyString"
    ))
  end

  it "renders the edit formato form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", formato_path(@formato), "post" do
      assert_select "input#formato_pdf[name=?]", "formato[pdf]"
      assert_select "input#formato_titulo[name=?]", "formato[titulo]"
    end
  end
end
