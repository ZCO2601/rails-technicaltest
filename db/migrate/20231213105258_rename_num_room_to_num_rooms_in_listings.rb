class RenameNumRoomToNumRoomsInListings < ActiveRecord::Migration[7.1]
  def change
    rename_column :listings, :num_room, :num_rooms
  end
end
