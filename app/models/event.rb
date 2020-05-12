class Event < ApplicationRecord
  belongs_to :user
  has_many :attendances
  has_many :users, through: :attendances
  validates :start_date, presence: true, if: :is_up_to_date?
  validates :duration, presence: true, if: :is_multiple_of_5?
  validates :title, presence: true, length: { in: 5..140 }
  validates :description, presence: true, length: { in: 20..1000 }
  validates :price, presence: true, inclusion: { in: 1..1000 }
  validates :location, presence: true

  def is_up_to_date?
    start_date >= DateTime.now
  end

  def is_multiple_of_5?
    duration > 0 && duration % 5 == 0
  end
end
