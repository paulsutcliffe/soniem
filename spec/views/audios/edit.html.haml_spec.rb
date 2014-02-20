require 'spec_helper'

describe "audios/edit" do
  before(:each) do
    @audio = assign(:audio, stub_model(Audio,
      :titulo => "MyString",
      :audio => "MyString"
    ))
  end

  it "renders the edit audio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", audio_path(@audio), "post" do
      assert_select "input#audio_titulo[name=?]", "audio[titulo]"
      assert_select "input#audio_audio[name=?]", "audio[audio]"
    end
  end
end
