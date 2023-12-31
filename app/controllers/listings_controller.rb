class ListingsController < ApplicationController
  def index
    listings = Listing.all
    render json: {listings: listings}
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(params[:listing])
    @listing.save
    redirect_to listing_path(@listing)
  end

  private

  def listing_params
    params.require(:listing).permit(:num_rooms)
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:id])
    @listing.update(listing_params)
    redirect_to listing_path(@listing)
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
    redirect_to listings_path, status: :see_other
  end
end
