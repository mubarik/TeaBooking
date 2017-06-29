class User < ApplicationRecord
	has_many :booking_request , dependent: :destroy
	has_many :booking , dependent: :destroy
	has_many :failed_requests , dependent: :destroy
end
