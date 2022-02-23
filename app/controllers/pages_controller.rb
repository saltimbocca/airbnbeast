class PagesController < ApplicationController
  def home
  end

  def dashboard
    @user = current_user
    @rentals = @user.rentals
  end
end
