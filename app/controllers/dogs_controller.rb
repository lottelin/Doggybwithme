class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.user = current_user
    if @dog.save
      redirect_to @dog, notice: 'New doggy profile was created! Woof!'
    else
      render :new
    end
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :photo, :photo_cache)
  end

end
