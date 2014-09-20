class Review < ActiveRecord::Base
  belongs_to :restraunt
  validates :rating, presence: true, numericality: {less_than_or_equal_to: 5}
  validates :restraunt_id, presence: true
end
