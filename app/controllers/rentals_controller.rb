class RentalsController < ApplicationController
  before_action :set_rental, only: :show

  def index
    @rentals = Rental.where(user_id: current_user.id)
    @user = current_user
  end

  def show
  end

  def new
    @rental = Rental.new
  end

  def create
    @beast = Beast.find(params[:beast_id])
    @rental = Rental.new(rental_params)
    @rental.beast = @beast
    if @rental.save
      redirect_to list_path(@beast)
    else
      render 'beasts/show'
    end
  end

  private

  def set_rental
    @rental = Rental.find(params[:id])
  end

  def rental_params
    params.require(:rental).permit(:start_date, :end_date, :status)
  end
end