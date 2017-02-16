class Statement < ApplicationRecord
	belongs_to :helicopter
	has_many :tasks, inverse_of: :statement
	accepts_nested_attributes_for :tasks, reject_if: ->(attrs) { attrs['title'].blank? || attrs['term'].blank? }, allow_destroy: true
	validates :crs, presence: true, length: {minimum: 12}
	validates :sot, presence: true
end