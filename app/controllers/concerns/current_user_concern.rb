module CurrentUserConcern
	extend ActiveSupport::Concern

	def current_user
		super || guest_user
	end

	def guest_user
		
		# part 120 openstruct tidak digunakan lagi karena implementasi petergate
		# OpenStruct.new(name: "Guest User", 
		# 			   first_name: "Guest", 
		# 			   last_name: "User", 
		# 			   email: "guest@asdf.com"
		# 			   )

		# local variable
		guest = GuestUser.new
		guest.name = "Guest User"
		guest.first_name = "Guest"
		guest.last_name = "guest@example.com"
		guest

	end
end