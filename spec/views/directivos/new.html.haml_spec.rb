require 'spec_helper'

describe "directivos/new" do
  before(:each) do
    assign(:directivo, stub_model(Directivo,
      :nombre => "MyString",
      :cargo => "MyString",
      :foto => "MyString"
    ).as_new_record)
  end

  it "renders new directivo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", directivos_path, "post" do
      assert_select "input#directivo_nombre[name=?]", "directivo[nombre]"
      assert_select "input#directivo_cargo[name=?]", "directivo[cargo]"
      assert_select "input#directivo_foto[name=?]", "directivo[foto]"
    end
  end
end
