class Booking < ApplicationRecord
    validates :membership_duration, presence: true
    validates :full_name, presence: true
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :start_date, presence: true
    validates :end_date, presence: true
    validates :contact, presence: true
end
