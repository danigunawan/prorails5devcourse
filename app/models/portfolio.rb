class Portfolio < ApplicationRecord
	validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image
	
	def self.angular
		where(subtitle: 'Angular')
	end

	scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby On Rails') }

	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= "http://placehold.it/600x400" 
		# diatas ||= ini sama dengan if else yang dibawah
			# if self.main_image == nil
			# 	self.main_image = "http://placehold.it/600x400"
			# end
		self.thumb_image ||= "http://placehold.it/350x200"
			# diatas ||= ini sama dengan if else yang dibawah
			# if self.thumb_image == nil
			# 	self.thumb_image = "http://placehold.it/350x200"
			# end
	end



	

end
