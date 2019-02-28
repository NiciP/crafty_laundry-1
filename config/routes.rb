Rails.application.routes.draw do
  devise_for :users
  root controller: :laundry_rooms, action: :index
end