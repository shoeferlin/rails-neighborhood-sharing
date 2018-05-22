class BookingsController < ApplicationController

  def index
    @toolbox = Tool.where(status: true)
    authorize @toolbox
  end

  def create
    # Create a new booking, confirmed is false
    # We only add it to the 'cart'
    @tool = Tool.find(params[:tool_id])
    @booking = Booking.new(user: current_user)
    @booking.tool = @tool
    authorize @booking
    if @booking.save
      @tool.update(status: true)
      redirect_to tool_path(@tool)
    end
  end

  def update
    authorize @toolbox
    # We set the confirmed status of the booking(s) to true
  end
end
