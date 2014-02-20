require 'spec_helper'

describe "audios/new" do
  before(:each) do
    assign(:audio, stub_model(Audio,
      :titulo => "MyString",
      :audio => "MyString"
    ).as_new_record)
  end

  it "renders new audio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", audios_path, "post" do
      assert_select "input#audio_titulo[name=?]", "audio[titulo]"
      assert_select "input#audio_audio[name=?]", "audio[audio]"
    end
  end
end
