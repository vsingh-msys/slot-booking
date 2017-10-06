class BookedSlot < ApplicationRecord
  belongs_to :time_slot
  belongs_to :appointment
end
