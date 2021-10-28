class BreweriesController < ApplicationController
  def index
    brewery = Brewery.all
    render json: brewery.as_json
  end

  def destroy
    brewery = Brewery.find(params[:id])
    brewery.destroy
    render json: {message: "Successfully deleted Brewery at id of #{params[:id]}"}
  end
end
