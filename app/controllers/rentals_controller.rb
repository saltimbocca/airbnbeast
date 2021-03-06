class RentalsController < ApplicationController
  before_action :set_rental, only: :show
  before_action :set_user

  def index
    @rentals = Rental.where(user_id: current_user.id)
    @user = current_user
  end

  def show
    @user = current_user
  end

  def new
  end

  def create
    @beast = Beast.find(params[:beast_id])
    @rental = Rental.new(rental_params)
    @rental.beast = @beast
    @rental.user = @user
    if @rental.save
      redirect_to dashboard_path
    else
      render 'beasts/show'
    end
  end

  private

  def set_rental
    @rental = Rental.find(params[:id])
  end

  def set_user
    @user = current_user
  end

  def rental_params
    params.require(:rental).permit(:start_date, :end_date)
  end
end
