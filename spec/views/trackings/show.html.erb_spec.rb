require 'rails_helper'

RSpec.describe "trackings/show", type: :view do
  before(:each) do
    @tracking = assign(:tracking, Tracking.create!(
      :unit => "Unit",
      :value => 2,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Unit/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
