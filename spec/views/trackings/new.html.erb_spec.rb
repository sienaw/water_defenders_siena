require 'rails_helper'

RSpec.describe "trackings/new", type: :view do
  before(:each) do
    assign(:tracking, Tracking.new(
      :unit => "MyString",
      :value => 1,
      :user => nil
    ))
  end

  it "renders new tracking form" do
    render

    assert_select "form[action=?][method=?]", trackings_path, "post" do

      assert_select "input#tracking_unit[name=?]", "tracking[unit]"

      assert_select "input#tracking_value[name=?]", "tracking[value]"

      assert_select "input#tracking_user_id[name=?]", "tracking[user_id]"
    end
  end
end
