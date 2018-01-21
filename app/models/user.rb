class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # fungsi validasi
  validates_presence_of :name

  # fungsi ekstraksi first and last name data
  def first_name
  	# self.name.split[0] atau
  	self.name.split.first
  end

  def last_name
  	# self.name.split[1] atau
  	self.name.split.last
  end
end
