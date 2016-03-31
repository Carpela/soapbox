require 'rails_helper'

RSpec.describe "speakers/show", type: :view do
  before(:each) do
    @speaker = assign(:speaker, Speaker.create!(
      :name => "Name",
      :sector => "Sector",
      :description => "Description",
      :phone => "Phone",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Sector/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Email/)
  end
end
