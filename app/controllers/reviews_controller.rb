class ReviewsController < ApplicationController
    
    def new
        @parking_lot = ParkingLot.find(params[:parking_lot_id])
        @review = Review.new
      end
    
      def create
        @parking_lot = ParkingLot.find(params[:parking_lot_id])
        @review = Review.new(review_params)
        @review.parking_lot = @parking_lot
        @review.save
    
        redirect_to parking_lot_path(@review)
      end
    
      private
    
      def review_params
        params.require(:review).permit(:content, :rating_star)
      end

end





