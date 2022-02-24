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
      render :new
    end
  end

  def index
    @beasts = Beast.all
    if params[:query].present?
      @beasts = Beast.global_search(params[:query])
    else
      @beasts = Beast.all
    end
    @markers = @beasts.map do |beast|
      {
        lat: beast.user.latitude,
        lng: beast.user.longitude,
        info_window: render_to_string(partial: "info_window", locals: { beast: beast }),
        image_url: helpers.asset_url("https://res.cloudinary.com/dngfqo2nf/image/upload/v1645651388/IconesWeb/icone-map-vert_hrn1un.png")
      }
    end
  end

  def show
    @rental = Rental.new
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
