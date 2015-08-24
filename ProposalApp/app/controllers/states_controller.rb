class StatesController < ApplicationController

  def index
    @states = State.all
  end

  def show
    @state = State.find(params[:id])
  end

  def new
    @state = State.new
  end

  def edit
    @state = State.find(params[:id])
  end

  def create
    @state = State.new state_params

    if @state.save
      redirect_to action: 'index'
    else
      render 'new'
    end
  end

  def update
    @state = State.find(params[:id])

    if @state.update(state_params)
      redirect_to @state
    else
      render 'edit'
    end
  end

  def destroy
    @state = State.find(params[:id])
    @state.destroy
    redirect_to action: :index
  end

  private
    def state_params
      params.require(:state).permit(:name)
    end

end
