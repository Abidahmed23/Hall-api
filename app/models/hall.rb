class Hall < ApplicationRecord
	validates_presence_of :total_seat
	validates_presence_of :availible
	validates_presence_of :seat
	validates_presence_of :new_reculted_list
	validates_presence_of :border_info
end
