class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def new
    @offer = Offer.new
    @user = User.new(params[:user_id])
  end

  def create
    @offer = Offer.new
    @user = User.new(params[:user_id])
    @user.offer = @offer
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :description, :price)
  end
end
