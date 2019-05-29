class Api::CocktailsController < ApplicationController

  def show
    response = HTTP.get("https://www.thecocktaildb.com/api/json/v1/#{ENV["api_key"]}/random.php").parse
    @cocktail = response["drinks"][0] 
    render 'show.json.jbuilder'
  end
end
