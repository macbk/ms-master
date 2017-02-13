class Statement < ApplicationRecord
	belongs_to :helicopter
	validates :crs, presence: true, length: {minimum: 12}
	validates :sot, presence: true
end
