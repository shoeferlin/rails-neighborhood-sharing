class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :tool
  validates :start_time, presence: true
  validates :end_time, presence: true
end

def destroy
  Booking.find(params[:bookings_ids]).destroy
  flash[:success] = "Material destroyed."
  redirect_to bookings_path
end
