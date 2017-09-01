Rails.application.routes.draw do
  root to: redirect('/contacts')

  #get 'sessions/new'
  resources :users, only: %i[new create]
  resource :session, only: %i[new create destroy]

  resources :contacts do
    resources :givemealerts
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
