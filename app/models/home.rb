class Home #< ActiveRecord::Base
	# attr_accessible :title, :body
	# acts_as_gmappable position: :location
	attr_accessor :location, :text, :user

	def initialize(user, text, location)
		@user = user
		@text = text
		@location = location
	end
end
