class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :event
  after_create :email

  def email
    UserMailer.registration_email(self).deliver_now
  end
end
