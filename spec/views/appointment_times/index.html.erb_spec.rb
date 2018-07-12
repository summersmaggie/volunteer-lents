require 'rails_helper'

RSpec.describe "appointment_times/index", type: :view do
  before(:each) do
    assign(:appointment_times, [
      AppointmentTime.create!(
        :name => "Name",
        :contact_info => "Contact Info"
      ),
      AppointmentTime.create!(
        :name => "Name",
        :contact_info => "Contact Info"
      )
    ])
  end

  it "renders a list of appointment_times" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Info".to_s, :count => 2
  end
end
