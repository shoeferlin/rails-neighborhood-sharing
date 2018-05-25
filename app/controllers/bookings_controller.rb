class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  def create
    @tool = Tool.find(params[:tool_id])
    @booking = Booking.new(user: current_user)
    @booking.tool = @tool
    authorize @booking
    if params["booking"]["start_date"].empty? || params["booking"]["end_date"].empty?
      @message = "No valid date"
      render 'tools/show'
    else
      @booking.start_time = DateTime.parse(params["booking"]["start_date"])
      @booking.end_time = DateTime.parse(params["booking"]["end_date"])
      if @booking.save
        redirect_to tool_path(@tool)
      else
        render 'tools/show'
      end
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
    @bookings = Booking.destroy(params["bookings_ids"])
    @bookings.each do |booking|
      authorize booking
    end
    respond_to do |format|
      format.html { redirect_to bookings_path }
      format.json { head :no_content }
    end
  end

end
