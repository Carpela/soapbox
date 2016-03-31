require 'rails_helper'

RSpec.describe "speakers/new", type: :view do
  before(:each) do
    assign(:speaker, Speaker.new(
      :name => "MyString",
      :sector => "MyString",
      :description => "MyString",
      :phone => "MyString",
      :email => "MyString"
    ))
  end

  it "renders new speaker form" do
    render

    assert_select "form[action=?][method=?]", speakers_path, "post" do

      assert_select "input#speaker_name[name=?]", "speaker[name]"

      assert_select "input#speaker_sector[name=?]", "speaker[sector]"

      assert_select "input#speaker_description[name=?]", "speaker[description]"

      assert_select "input#speaker_phone[name=?]", "speaker[phone]"

      assert_select "input#speaker_email[name=?]", "speaker[email]"
    end
  end
end
