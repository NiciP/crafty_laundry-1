class LaundryRoomsController < ApplicationController
  
    def index
      @laundry_rooms = LaundryRoom.all
    end 

  
    def create_booking
      laundry_room = LaundryRoom.find(params[:laundry_room_id])
      time_slot = Time.zone.parse(params[:time])
      time_slot_to_book = laundry_room.schedule.occurrences(1.month.from_now).detect{ |occ| occ.beginning_of_hour.localtime == time_slot.localtime } 
      binding.pry
      laundry_room.be_booked!(time:time_slot_to_book, amount:1)
      
    end

end