class Blog < ApplicationRecord
	enum status: { draft: 0, published: 1 }
	extend FriendlyId
	friendly_id :title, use: :slugged

	validates_presence_of :title, :body, :topic_id

	belongs_to :topic

	def self.special_blogs # selft method/action adalah sebuah aksi dari model/class itu sendiri(self) dan bisa dipanggil hanya pada object class tersebut
		#limit(2)
		all
	end
end
