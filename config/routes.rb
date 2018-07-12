Rails.application.routes.draw do
  resources :appointment_times
  resources :time_slots do
    resources :appointments
  end

  resources :calendars

  root :to => 'layouts#home'
end
