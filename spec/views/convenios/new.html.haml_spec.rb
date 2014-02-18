require 'spec_helper'

describe "convenios/new" do
  before(:each) do
    assign(:convenio, stub_model(Convenio,
      :nombre => "MyString",
      :descripcion => "MyText"
    ).as_new_record)
  end

  it "renders new convenio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", convenios_path, "post" do
      assert_select "input#convenio_nombre[name=?]", "convenio[nombre]"
      assert_select "textarea#convenio_descripcion[name=?]", "convenio[descripcion]"
    end
  end
end
