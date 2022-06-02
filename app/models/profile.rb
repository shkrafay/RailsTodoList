class Profile < ApplicationRecord
	# validates :agreed, acceptance: { message: 'must be abided' }
	validates :name, :email, presence: true
	validates :zip, numericality: { only_integer: true },  length: { minimum: 4 }
	validates :state, inclusion: { in: %w(Punjab Sindh Balochistan KPK),
		message: "%{value} is not a valid State" 
	} 

	after_touch do
		puts 'A profile was touched'
	end
end
# 