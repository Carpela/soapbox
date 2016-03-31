require 'rails_helper'

RSpec.describe "speakers/index", type: :view do
  before(:each) do
    assign(:speakers, [
      Speaker.create!(
        :name => "Name",
        :sector => "Sector",
        :description => "Description",
        :phone => "Phone",
        :email => "Email"
      ),
      Speaker.create!(
        :name => "Name",
        :sector => "Sector",
        :description => "Description",
        :phone => "Phone",
        :email => "Email"
      )
    ])
  end

  it "renders a list of speakers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Sector".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
