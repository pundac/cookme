class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
    # @review = Review.new
  end

  def new
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.offer = Offer.find(params[:offer_id])
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:offer_id, :date)
  end
end
