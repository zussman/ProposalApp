class UtilitiesController < ApplicationController

  def index
    @utilities = Utility.all
  end

  def show
    @utility = Utility.find(params[:id])
  end

  def new
    @utility = Utility.new
  end

  def edit
    @utility = Utility.find(params[:id])
  end

  def create
    @utility = Utility.new utility_params

    if @utility.save
      redirect_to action: 'index'
    else
      render 'new'
    end
  end

  def update
    @utility = Utility.find(params[:id])

    if @utility.update(utility_params)
      redirect_to action: 'index'
    else
      render 'edit'
    end
  end

  private
  def utility_params
    params.require(:utility).permit(:utility_name)
  end
end
