Rails.application.routes.draw do
  resources :tournaments, only: [:index, :show] do
    member do
      post :enter_tournament
      post :leave_tournament
    end
  end

  resources :teams

  resource :sessions

  get '/auth/:provider/callback', to: 'sessions#create'

  root 'teams#index'
end
