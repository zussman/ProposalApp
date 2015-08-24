class CitiesController < ApplicationController

  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
  end

  def new
    @city = City.new
  end

  def edit
    @city = City.find(params[:id])
  end

  def create
    @city = City.new city_params

    if @city.save
      redirect_to action: 'index'
    else
      render 'new'
    end
  end

  def update
    @city = City.find(params[:id])

    if @city.update(city_params)
      redirect_to @city
    else
      render 'edit'
    end
  end

  def destroy
    @city = City.find(params[:id])
    @city.destroy
    redirect_to action: :index
  end

  private
    def city_params
      params.require(:city).permit(:name)
    end

end
