class HomesController < ApplicationController

  def index
    @homes = Home.all
  end

  def show
    @home = Home.find(params[:id])
  end

  def new
    @home = Home.new
  end

  def edit
    @home = Home.find(params[:id])
  end

  def create
    @home = Home.new home_params

    if @home.save
      redirect_to action: 'index'
    else
      render 'new'
    end
  end

  def update
    @home = Home.find(params[:id])

    if @home.update(home_params)
      redirect_to @home
    else
      render 'edit'
    end
  end

  def destroy
    @home = Home.find(params[:id])
    @home.destroy
    redirect_to action: :index
  end

  private
  def home_params
    params.require(:home).permit(:utility_id, utilities_attributes: [:id, :name, :_destroy])
  end
  
end
