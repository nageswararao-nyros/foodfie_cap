Rails.application.routes.draw do
  resources :dishes
  resources :restaurants
  root 'dishes#index'
  get 'search' => "dishes#search"
  get 'dishes/:id' => "dishes#show"
  get 'restaurants/:id' => "restaurants#show"
  get 'filter'=> "dishes#filters"

	get '/dish_list' => 'dishes#dish_list'
  

end
