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
    @phone_number = PhoneNumber.new phone_number_params

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

  private
    def phone_number_params
      params.require(:phone_number).permit(:phone_number)
    end
end
