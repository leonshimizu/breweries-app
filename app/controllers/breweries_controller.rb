class BreweriesController < ApplicationController
  def index
    brewery = Brewery.all
    render json: brewery.as_json
  end
end
