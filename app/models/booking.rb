class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :item

  validates :starts_at, :ends_at, presence: true
  
  def starts_at_after_ends_at
    if ends_at < starts_at
      errors.add(:end_time, "La date de fin doit être supérieure à la date de début")
    end
  end
end
