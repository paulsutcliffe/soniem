require 'spec_helper'

describe "directivos/edit" do
  before(:each) do
    @directivo = assign(:directivo, stub_model(Directivo,
      :nombre => "MyString",
      :cargo => "MyString",
      :foto => "MyString"
    ))
  end

  it "renders the edit directivo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", directivo_path(@directivo), "post" do
      assert_select "input#directivo_nombre[name=?]", "directivo[nombre]"
      assert_select "input#directivo_cargo[name=?]", "directivo[cargo]"
      assert_select "input#directivo_foto[name=?]", "directivo[foto]"
    end
  end
end
