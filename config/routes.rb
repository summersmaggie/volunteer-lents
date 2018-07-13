Rails.application.routes.draw do
  
  resources :time_slots do
    resources :appointments
  end

  resources :calendars

  root :to => 'layouts#home'
end
