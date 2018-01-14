class Portfolio < ApplicationRecord
	has_many :technologies # technologies ambil dari nama table
	include Placeholder
	validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image
	
	def self.angular
		where(subtitle: 'Angular')
	end

	scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby On Rails') }

	after_initialize :set_defaults

	def set_defaults
		
		## Jika menggunakan template concerns placeholder atau cara normalnya 
		#self.main_image ||= "http://placehold.it/600x400" 
		# diatas ||= ini sama dengan if else yang dibawah
			# if self.main_image == nil
			# 	self.main_image = "http://placehold.it/600x400"
			# end
		#self.thumb_image ||= "http://placehold.it/350x200"
			# diatas ||= ini sama dengan if else yang dibawah
			# if self.thumb_image == nil
			# 	self.thumb_image = "http://placehold.it/350x200"
			# end

		## Jika menggunakan cara concerns placeholder templatenya
		self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
		self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
	end



	

end
