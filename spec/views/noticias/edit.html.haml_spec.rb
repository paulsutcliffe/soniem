require 'spec_helper'

describe "noticias/edit" do
  before(:each) do
    @noticia = assign(:noticia, stub_model(Noticia,
      :titulo => "MyString",
      :imagen => "MyString",
      :contenido => "MyText"
    ))
  end

  it "renders the edit noticia form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", noticia_path(@noticia), "post" do
      assert_select "input#noticia_titulo[name=?]", "noticia[titulo]"
      assert_select "input#noticia_imagen[name=?]", "noticia[imagen]"
      assert_select "textarea#noticia_contenido[name=?]", "noticia[contenido]"
    end
  end
end
