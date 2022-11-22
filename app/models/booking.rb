class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dinosaur

  validates :start_date, :end_date, presence: true
  validate :end_date_after_start_date

  def duration
    (self.end_date - self.start_date) / 60 / 60 / 24
  end

  private

  def end_date_after_start_date
    errors.add(:end_date, "can't be before start date") if end_date < start_date
  end

end
