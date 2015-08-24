class PeopleController < ApplicationController

  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def edit
    @person = Person.find(params[:id])
  end

  def create
    @person = Person.new person_params

    if @person.save
      redirect_to action: 'index'
    else
      render 'new'
    end
  end

  def update
    @person = Person.find(params[:id])

    if @person.update(person_params)
      redirect_to @person
    else
      render 'edit'
    end
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    redirect_to action: :index
  end

  private
    def person_params
      params.require(:person).permit(:first_name, :last_name, person_phone_number_attributes: [:id, :_destroy, phone_number: [:id, :phone_number]], person_email_attributes: [:id, :email_address, :_destroy, email: [:id, :email_address]])
    end
    
end