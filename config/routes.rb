Rails.application.routes.draw do
  #get "/simulations/:id", to: "simulations#success", as: "success"
  get '/simulations/:id', to: 'simulations#success', as: 'success'
  resources :simulations
end
