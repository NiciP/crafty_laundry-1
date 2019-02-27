class LaundryRoomsController < ApplicationController
    def new 
        @laundry_room = LaundryRoom.new
    end
end