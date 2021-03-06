Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "bookings#home"
  resources :bookings # rails creates the RESTful routes automatically

  get 'bookings', to: 'bookings#index'

end

  # Here is how I would create the routes manually:

  # # Read all the bookings
  # get '/bookings', to: 'bookings#index'

  # # Create a booking
  # get 'bookings/new', to: 'bookings#new' # display the form to the user
  # post '/bookings', to: 'bookings#create'

  # # Read one booking
  # get '/bookings/:id', to: 'bookings#show'

  # # Update a booking
  # get 'bookings/:id/edit', to: 'bookings#edit'
  # patch 'bookings/:id', to: 'bookings#update'

  # # Delete a booking
  # delete '/bookings/:id', to: 'bookings#destroy'
