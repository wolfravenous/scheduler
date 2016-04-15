class Block < ActiveRecord::Base
  validates :day, presence: true
end
