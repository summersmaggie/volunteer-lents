require 'rails_helper'

RSpec.describe "AppointmentTimes", type: :request do
  describe "GET /appointment_times" do
    it "works! (now write some real specs)" do
      get appointment_times_path
      expect(response).to have_http_status(200)
    end
  end
end
