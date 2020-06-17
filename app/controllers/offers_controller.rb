class OffersController < ApplicationController
  def index
    if params[:category].blank?
      @offers = Offer.all
    else
      category = Category.find_by(name: params[:category])
      @offers = Offer.where(category_id: category.id)
    end
  end

  def show
    @offer = Offer.find(params[:id])
    # @review = Review.all
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    user = current_user
    @offer.user = user
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :description, :price, :category_id)
  end
end
