class BeastsController < ApplicationController
  before_action :set_beast, only: [ :show, :destroy, :edit, :update ]

  def new
    @beast = Beast.new
  end

  def create
    @user = current_user
    @beast = Beast.new(beast_params)
    @beast.user_id = @user.id
    if @beast.save!
      redirect_to beasts_path(@beast)
    else
      raise
      render :new
    end
  end

  def index
    @beasts = Beast.all
  end

  def show
    @beast
  end

  def edit
  end

  def update
    @beast.update(beast_params)
    redirect_to beast_path(@beast)
  end

  def destroy
    @beast.destroy
    redirect_to root_path
  end

  private

  def beast_params
    params.require(:beast).permit(:name, :gender, :date_of_birth, :species, :bio, photos: [])
  end

  def set_beast
    @beast = Beast.find(params[:id])
  end

end