Rails.application.routes.draw do
  get '/simulations/:id', to: 'simulations#success', as: 'success'
  root "simulations#index" 
  resources :simulations
end
