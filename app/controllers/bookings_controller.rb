class BookingsController < ApplicationController

  def index
    @bookings = Booking.where(user: current_user)
  end

  def show
    @booking = Booking.find(params[:id])
    @item = Item.find(params[:item_id])
  end

  def new
    @booking = Booking.new
    @item = Item.find(params[:item_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.item = Item.find(params[:item_id])
    @booking.status = "Pending"

    if @booking.save
      redirect_to item_booking_path(@booking.item, @booking)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
