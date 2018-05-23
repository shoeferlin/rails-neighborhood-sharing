class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  def create
    @tool = Tool.find(params[:tool_id])
    @booking = Booking.new(user: current_user)
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
end
