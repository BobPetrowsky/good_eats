class ReviewsController < ApplicationController
  before_action { @restraunt = Restraunt.find(params[:restraunt_id]) }
  def new
    @review = Review.new
  end
  def create
    @review = Review.new(review_params)
    @restraunt = Restraunt.find(params[:restraunt_id])
    @review.restraunt = @restraunt

    if @review.save
      redirect_to @restraunt
      flash[:notice] = "Review created!"
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :body)
  end
end
