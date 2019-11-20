class PagesController < ApplicationController
  def home
  end

  def profile
    @user = current_user
  end

  def image_upload
    current_user.photo = user_params[:photo]
    current_user.save!
  end

  private

  def user_params
    params.require(:user).permit(:photo)
  end
end
