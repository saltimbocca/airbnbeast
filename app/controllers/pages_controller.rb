class PagesController < ApplicationController
  def home
    @user = current_user
    @beasts = Beast.all
  end

  def dashboard
    @user = current_user
    @rentals = @user.rentals
  end
end
