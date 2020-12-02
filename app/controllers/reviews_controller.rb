class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def new
    @parking_lot = ParkingLot.find(params[:parking_lot_id])
    @review = Review.new
  end

  def index
    @parking_lot = ParkingLot.find(params[:parking_lot_id])
    @reviews = Review.where(parking_lot: @parking_lot)
  end

  def create
    @parking_lot = ParkingLot.find(params[:parking_lot_id])
    @review = Review.new(review_params)
    @review.parking_lot = @parking_lot
    @review.user = current_user
    authorize @review
    if @review.save
      redirect_to parking_lot_path(@parking_lot)
    else
      flash[:alert] = "Something went wrong."
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating_star)
  end

end





