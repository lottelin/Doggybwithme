class BookingsController < ApplicationController
  def create
    year = params[:booking]["start_date(1i)"].to_i
    month = params[:booking]["start_date(2i)"].to_i
    day = params[:booking]["start_date(3i)"].to_i
    start_date = Date.new(year, month, day)

    year = params[:booking]["end_date(1i)"].to_i
    month = params[:booking]["end_date(2i)"].to_i
    day = params[:booking]["end_date(3i)"].to_i
    end_date = Date.new(year, month, day)

    @booking = Booking.new(start_date: start_date, end_date: end_date, user_id: current_user.id, dog_id: params[:dog_id])
    @booking.save!
    redirect_to profile_path, notice: 'High 5 with your dog soon! Woof!!'
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to profile_path, notice: 'Your booking has been deleted! Woof!!'
  end

end
