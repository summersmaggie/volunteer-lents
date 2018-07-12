require "rails_helper"

RSpec.describe AppointmentTimesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/appointment_times").to route_to("appointment_times#index")
    end

    it "routes to #new" do
      expect(:get => "/appointment_times/new").to route_to("appointment_times#new")
    end

    it "routes to #show" do
      expect(:get => "/appointment_times/1").to route_to("appointment_times#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/appointment_times/1/edit").to route_to("appointment_times#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/appointment_times").to route_to("appointment_times#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/appointment_times/1").to route_to("appointment_times#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/appointment_times/1").to route_to("appointment_times#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/appointment_times/1").to route_to("appointment_times#destroy", :id => "1")
    end

  end
end
