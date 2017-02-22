class Task < ApplicationRecord
  belongs_to :statement
  validates :title, :term, presence: true
end
