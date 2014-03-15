class Carribean < ActiveRecord::Base

	validates :name, presence: true
	validates :address, presence: true

	# instead of letting users put in co ordinates make geo coder do it 

	geocoded_by :address
	after_validation :geocode

end
