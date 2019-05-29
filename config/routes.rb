Rails.application.routes.draw do

  namespace :api do
    get "/random_cocktail" => "cocktails#show"
  end
end
