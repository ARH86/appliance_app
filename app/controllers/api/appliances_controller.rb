class Api::AppliancesController < ApplicationController
  def index 
    @appliances = Appliance.all
    render 'index.json.jbuilder'
  end

  def create
    @appliance = Appliance.new(
                              brand: params[:brand],
                              appliance_type: params[:appliance_type],
                              price: params[:price]
                              )
  appliance.save
  render 'show.json.jbuilder'
  end

  def show
    @appliance = Appliance.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @appliance = Appliance.find(params[:id])

    @appliance.brand = params[:brand] || @appliance.brand
    @appliance.appliance_type = params[:appliance_type] || @appliance.appliance_type
    @appliance.price = params[:price] || @appliance.price
    @appliance.save
    render 'show.json.jbuilder'
  end

  def destroy
    @appliance = Appliance.find(params[:id])
    @appliance.destroy

    render json: {message: "Appliance has been destroyed"}
  end
end
