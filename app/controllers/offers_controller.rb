class OffersController < ApplicationController
  def index
    @offers = Offer.geocoded
    @markers = @offers.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { offer: offer }),
        image_url: helpers.asset_url('map_marker.png')
      }
    end
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
    params.require(:offer).permit(:title, :description, :price, :address, :category_id)
  end
end
