Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # This is the root, home page
  root to: 'bookings#home'

  # Read all the bookings
  get '/bookings', to: 'bookings#index'

  # Read one booking
  get '/bookings/:id', to: 'bookings#show'

  # Create a booking
  get 'bookings/new', to: 'bookings#new' # display the form to the user
  post '/bookings', to: 'bookings#create'

  # Update a booking
  get 'bookings/:id/edit', to: 'bookings#edit'
  patch 'bookings/:id', to: 'bookings#update'

  # Delete a booking
  delete '/bookings/:id', to: 'bookings#destroy'

# ##########
#   root to: "pages#home"

#   get '/sunset', to: "pages#sunset"
#   get '/sunrise', to: "pages#sunrise"
#   get '/booking', to: "pages#booking"

end

 # structure of routing:
  # verb        to: "controller#action"
  # get '/booking', to: "pages#booking"
