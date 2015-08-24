class PhoneNumbersController < ApplicationController
  def index
    @phone_numbers = PhoneNumber.all
  end

  def show
    @phone_number = PhoneNumber.find(params[:id])
  end

  def new
    @phone_number = PhoneNumber.new
  end

  def edit
    @phone_number = PhoneNumber.find(params[:id])
  end

  def create
    @phone_number = PhoneNumber.create phone_number_params

    if @phone_number.save
      redirect_to action: 'index'
    else
      render 'new'
    end
  end

  def update
    @phone_number = PhoneNumber.find(params[:id])

    if @phone_number.update(phone_number_params)
      redirect_to @phone_number
    else
      render 'edit'
    end
  end

  def destroy
    @phone_number = PhoneNumber.find(params[:id])
    @phone_number.destroy
    redirect_to action: :index
  end

  private
    def phone_number_params
      params.require(:phone_number).permit(:phone_number, :phone_type_id, phone_types_attributes: [:id, :name, :_destroy])
    end
end
