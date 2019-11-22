class DogsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
    @booking = Booking.new
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.user = current_user
    if @dog.save
      redirect_to profile_path, notice: 'Your new dog profile has been created! Woof!'
    else
      render :new
    end
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :photo, :breed, :postcode, :age, :sex, :description, :cuddly, :energetic, :obedient, :couchpotato, :price, :photo_cache)
  end

end

