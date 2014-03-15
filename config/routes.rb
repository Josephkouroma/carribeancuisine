Carribeancuisine::Application.routes.draw do
resources :carribeans 

root "carribeans#index"
  
end
