require 'rails_helper'

RSpec.describe "appointment_times/edit", type: :view do
  before(:each) do
    @appointment_time = assign(:appointment_time, AppointmentTime.create!(
      :name => "MyString",
      :contact_info => "MyString"
    ))
  end

  it "renders the edit appointment_time form" do
    render

    assert_select "form[action=?][method=?]", appointment_time_path(@appointment_time), "post" do

      assert_select "input[name=?]", "appointment_time[name]"

      assert_select "input[name=?]", "appointment_time[contact_info]"
    end
  end
end
