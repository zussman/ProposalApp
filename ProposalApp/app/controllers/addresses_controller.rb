class AddressesController < ApplicationController
  def index
    @addresses = Address.all
  end

  def show
    @address = Address.find(params[:id])
  end

  def new
    @address = Address.new
  end

  def edit
    @address = Address.find(params[:id])
  end

  def create
    @address = Address.create address_params

    if @address.save
      redirect_to action: 'index'
    else
      render 'new'
    end
  end

  def update
    @address = Address.find(params[:id])

    if @address.update(address_params)
      redirect_to @address
    else
      render 'edit'
    end
  end

  def destroy
    @address = Address.find(params[:id])
    @address.destroy
    redirect_to action: :index
  end

  private
    def address_params
      params.require(:address).permit(:address_line_1, :address_line_2, :city_id, :state_id, cities_attributes: [:id, :name, :_destroy], states_attributes: [:id, :name, :_destroy])
    end
end
