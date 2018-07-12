require 'rails_helper'

RSpec.describe "time_slots/index", type: :view do
  before(:each) do
    assign(:time_slots, [
      TimeSlot.create!(),
      TimeSlot.create!()
    ])
  end

  it "renders a list of time_slots" do
    render
  end
end
