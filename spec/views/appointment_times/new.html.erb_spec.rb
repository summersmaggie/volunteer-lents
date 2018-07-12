require 'rails_helper'

RSpec.describe "appointment_times/new", type: :view do
  before(:each) do
    assign(:appointment_time, AppointmentTime.new(
      :name => "MyString",
      :contact_info => "MyString"
    ))
  end

  it "renders new appointment_time form" do
    render

    assert_select "form[action=?][method=?]", appointment_times_path, "post" do

      assert_select "input[name=?]", "appointment_time[name]"

      assert_select "input[name=?]", "appointment_time[contact_info]"
    end
  end
end
