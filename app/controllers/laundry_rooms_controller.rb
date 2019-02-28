class LaundryRoomsController < ApplicationController
  before_action :authenticate_user!, only: [:create_booking]
    
  def index
      @laundry_rooms = LaundryRoom.all
  end 
    
  def create_booking
    laundry_room = LaundryRoom.find(params[:laundry_room_id])
    time_slot = Time.zone.parse(params[:time])
    time_slot_to_book = laundry_room.schedule.occurrences(1.month.from_now).detect{ |occ| occ.beginning_of_hour.localtime == time_slot.localtime } 
    
    begin
      current_user.book! laundry_room, time:time_slot_to_book, amount:1
      flash[:notice] = "You have a booking #{time_slot.to_formatted_s(:short)}."
    
      redirect_to root_path
    
    rescue ActsAsBookable::AvailabilityError => error
      redirect_to root_path, notice: error.message.underscore.humanize
    end
  end
end