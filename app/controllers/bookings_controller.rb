# class BookingsController < ApplicationController

#     def new
#          @booking = Booking.new
#     end

#     def create
#         @booking = Booking.new(booking_params)
#         @booking.offer = Offer.find(params[offer_id])
#         @booking.user = current_user
#         if @booking.save
#             redirect_to booking_path(@booking)
#         else
#             render :new
#         end
#     end

#     def show
#         @booking = Booking.find(params[:id])
#         @review = Review.new
#     end
    
# private

#   def booking_params
#     params.require(:booking).permit(:user_id, :offer_id, :date)
#   end

# end
