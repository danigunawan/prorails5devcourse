class Skill < ApplicationRecord
	include Placeholder
	validates_presence_of :title, :percent_utilized

	after_initialize :set_defaults

	def set_defaults
		#jika tidak menggunakan template placeholder pada concerns

		# self.badge ||= "http://placehold.it/250x250" 
		# diatas ||= ini sama dengan if else yang dibawah
			# if self.badge == nil
			# 	self.badge = "http://placehold.it/250x250" 
			# end

		#jika menggunakan template placeholder pada concerns
		self.badge ||= Placeholder.image_generator(height: '250', width: '250')
	end
end
