Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      get '/users', to: 'users#index'
      post '/users', to: 'users#create'
      post '/users/:id', to: 'users#show'
      get '/users/:id', to: 'users#view'

      get '/venues', to: 'venues#index'
      get '/venues/:id', to: 'venues#show'
      post '/user_favs', to: 'venues#get_venue_details'
      # get '/user_favs', to:'venues#see_user_venue_favs'
      post '/venues/categories', to: 'venues#find_categories'
      post '/venues/capacity', to: 'venues#find_capacity'

      post '/favorites', to: 'favorites#create'
      get '/favorites', to: 'favorites#index'
      delete '/favorites/:id', to: 'favorites#delete'

      post '/reservations', to: 'reservations#create'
      get '/reservations', to: 'reservations#index'
      post '/user_reservations', to: 'reservations#get_venue_data'
      delete '/reservations/:id', to: 'reservations#delete'
      patch '/reservations/:id', to: 'reservations#update'

      get '/vendors', to: 'vendors#index'

      post '/login', to: 'auth#create'

    end
  end
end
