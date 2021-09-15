Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "pages#home"

  get '/sunset', to: "pages#sunset"
  get '/sunrise', to: "pages#sunrise"
  get '/booking', to: "pages#booking"

end

 # structure of routing:
  # verb        to: "controller#action"
  # get '/booking', to: "pages#booking"
