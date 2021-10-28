Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/breweries" => "breweries#index"
  delete "/breweries/:id" => "breweries#destroy"
end