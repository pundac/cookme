class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
    @offer_bookings = []
    current_user.offers.each do |offer|
      @offer_bookings << offer.bookings
    end
    @offer_bookings.flatten!
  end
  
    def update 
       
        @booking = Booking.find(params[:id])
        if params[:accepted] =="true"
         @booking.accepted = true 
        end 
        @booking.save 
    end

  def show
    @booking = Booking.find(params[:id])
    @review = Review.new
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

    # if params[:booking]?

    #     user_name = User.find_by(title: params[:offer])
    #     # @offers = Offer.where(category_id: category.id)
    # end
  end

  private

  def booking_params
    params.require(:booking).permit(:offer_id, :date)
  end
end
