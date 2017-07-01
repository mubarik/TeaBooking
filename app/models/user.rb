class User < ApplicationRecord
	has_many :booking_requests , dependent: :destroy
	has_many :bookings , dependent: :destroy
	has_many :failed_requests , dependent: :destroy
  validates :user_email, uniqueness: true
	def self.import()
    TeaBooking.find_each do |a|
      if User.where(:user_email => a.user_email).blank?
        user = User.new(
          :user_email => a.user_email
        )
        user.save!
      else
        user = User.find_by_user_email(a.user_email)
      end  
       user.booking_requests.create(user_id: user.id , 
          start_date: a.start_date , end_date: a.end_date , 
          number_time_slots: a.number_time_slots , club_name: a.club_name)
     end
	end 
end
