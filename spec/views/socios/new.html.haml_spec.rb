require 'spec_helper'

describe "socios/new" do
  before(:each) do
    assign(:socio, stub_model(Socio,
      :nombre => "MyString",
      :contenido => "MyText",
      :fotografia => "MyString",
      :web => "MyString",
      :twitter => "MyString",
      :facebook => "MyString",
      :soundcloud => "MyString"
    ).as_new_record)
  end

  it "renders new socio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", socios_path, "post" do
      assert_select "input#socio_nombre[name=?]", "socio[nombre]"
      assert_select "textarea#socio_contenido[name=?]", "socio[contenido]"
      assert_select "input#socio_fotografia[name=?]", "socio[fotografia]"
      assert_select "input#socio_web[name=?]", "socio[web]"
      assert_select "input#socio_twitter[name=?]", "socio[twitter]"
      assert_select "input#socio_facebook[name=?]", "socio[facebook]"
      assert_select "input#socio_soundcloud[name=?]", "socio[soundcloud]"
    end
  end
end
