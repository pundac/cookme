class BookingsController < ApplicationController
   def index
    @bookings = current_user.bookings
    @offers = current_user.offers    
   end
    

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
