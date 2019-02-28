Rails.application.routes.draw do

  get 'calendar/index'

  root controller: :laundry_rooms, action: :index
  resources :laundry_rooms, only: [:index, :show]
end