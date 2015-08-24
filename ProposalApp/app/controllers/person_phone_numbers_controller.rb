class PersonPhoneNumbersController < ApplicationController

  def index
    @person_phone_numbers = PersonPhoneNumber.all
  end

  def show
    @person_phone_number = PersonPhoneNumber.find(params[:id])
  end

  def new
    @person_phone_number = PersonPhoneNumber.new
  end

  def edit
    @person_phone_number = PersonPhoneNumber.find(params[:id])
  end

  def create
    @person_phone_number = PersonPhoneNumber.new person_phone_number_params

    if @person_phone_number.save
      redirect_to action: 'index'
    else
      render 'new'
    end
  end

  def update
    @person_phone_number = PersonPhoneNumber.find(params[:id])

    if @person_phone_number.update(person_phone_number_params)
      redirect_to @person_phone_number
    else
      render 'edit'
    end
  end

  def destroy
    @person_phone_number = PersonPhoneNumber.find(params[:id])
    @person_phone_number.destroy
    redirect_to action: :index
  end

  private
    def person_phone_number_params
      params.require(:person_phone_number).permit(phone_number_attributes: [:id, :phone_number, :_destroy], person_attributes: [:id, :first_name, :last_name])
    end

end

