Rails.application.routes.draw do
  root controller: :laundry_rooms, action: :index
    resources :booking, action: :test
end