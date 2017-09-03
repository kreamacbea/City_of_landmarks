class CitiesController < ApplicationController

  def index
    @cities = City.all
  end

  def show
    @cities = City.find(params[:id])
  end

  def new
    @cities = City.new
  end

  def create
    @cities = City.new(city_params)
    if @cities.save
      redirect_to @cities
    else
      render 'new'
    end
  end

  def edit
    @cities = City.find(params[:id])
  end

  def update
    @cities = City.find(params[:id])
    if @cities.update_attributes(city_params)
      redirect_to cities_path
    else
      render 'edit'
    end
  end

  def destroy
    @city = City.find(params[:id])

    @city.destroy

    redirect_to cities_path
  end

  private

  def city_params
    params.require(:city).permit(:name)
  end


end
