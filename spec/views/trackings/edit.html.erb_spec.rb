require 'rails_helper'

RSpec.describe "trackings/edit", type: :view do
  before(:each) do
    @tracking = assign(:tracking, Tracking.create!(
      :unit => "MyString",
      :value => 1,
      :user => nil
    ))
  end

  it "renders the edit tracking form" do
    render

    assert_select "form[action=?][method=?]", tracking_path(@tracking), "post" do

      assert_select "input#tracking_unit[name=?]", "tracking[unit]"

      assert_select "input#tracking_value[name=?]", "tracking[value]"

      assert_select "input#tracking_user_id[name=?]", "tracking[user_id]"
    end
  end
end
