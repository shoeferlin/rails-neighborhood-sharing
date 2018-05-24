class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  def create
    @tool = Tool.find(params[:tool_id])
    @booking = Booking.new(user: current_user)
    if params["booking"]["start_date"].to_date
      @booking.start_time = DateTime.parse(params["booking"]["start_date"])
      @booking.end_time = DateTime.parse(params["booking"]["end_date"])
    end

    @booking.tool = @tool
    authorize @booking
    if @booking.save
      redirect_to tool_path(@tool)
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "accepted"
    @booking.save
    authorize @booking
    redirect_to dashboard_path
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.status = "declined"
    @booking.save
    authorize @booking
    redirect_to dashboard_path
  end

  # def destroy
  #   @bookings = Booking.find(params['check'])
  #   raise
  #   @bookings.destroy
  #   redirect_to dashboard_path
  # end

  def destroy_multiple
    @booking = Booking.destroy(params["bookings_ids"])
    authorize @booking
    respond_to do |format|
      format.html { redirect_to bookings_path }
      format.json { head :no_content }
    end
  end

end
