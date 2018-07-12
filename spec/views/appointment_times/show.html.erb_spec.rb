require 'rails_helper'

RSpec.describe "appointment_times/show", type: :view do
  before(:each) do
    @appointment_time = assign(:appointment_time, AppointmentTime.create!(
      :name => "Name",
      :contact_info => "Contact Info"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Contact Info/)
  end
end
