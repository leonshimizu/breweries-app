class BreweriesController < ApplicationController
  def index
    if params[:state]
      brewery = Brewery.where(state: params[:state])
      render json: brewery.as_json
    else
      brewery = Brewery.all 
      render json: brewery.as_json
    end
  end

  def destroy
    brewery = Brewery.find(params[:id])
    brewery.destroy
    render json: {message: "Successfully deleted Brewery at id of #{params[:id]}"}
  end

  def show
    brewery = Brewery.find(params[:id])
    render json: brewery.as_json
  end
end
