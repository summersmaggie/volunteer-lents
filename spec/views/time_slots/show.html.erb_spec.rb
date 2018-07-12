require 'rails_helper'

RSpec.describe "time_slots/show", type: :view do
  before(:each) do
    @time_slot = assign(:time_slot, TimeSlot.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
