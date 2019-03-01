class LaundryRoomsController < ApplicationController
    def index
      @laundry_rooms = LaundryRoom.all
    end 

    def create
    binding.pry
    end

end