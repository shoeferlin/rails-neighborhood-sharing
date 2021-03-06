class ReviewsController < ApplicationController
  def create
    @tool = Tool.find(params[:tool_id])
    @review = Review.new(review_params)
    @booking = Booking.new
    @review.tool = @tool
    authorize @review
    if @review.save
      respond_to do |f|
        f.html { redirect_to tool_path(@tool) }
        f.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'tools/show' }
        format.js  # <-- idem
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end

end
