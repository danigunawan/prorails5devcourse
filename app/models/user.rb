class User < ApplicationRecord
  ############################################################################################
  ## PeterGate Roles                                                                        ##
  ## The :user role is added by default and shouldn't be included in this list.             ##
  ## The :root_admin can access any page regardless of access settings. Use with caution!   ##
  ## The multiple option can be set to true if you need users to have multiple roles.       ##
  # petergate(roles: [:admin, :editor], multiple: false)                                      ##
  petergate(roles: [:site_admin], multiple: false)                                      ##
  ############################################################################################ 
 

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
  # fungsi validasi
  #validates_presence_of :name # jika ingin coba menggunakan rescue
  validates_presence_of :name

  # fungsi ekstraksi first and last name data

  # # Fungsi dengan rescue (jika digunakan maka yang tadinya error karena method oops tidak ada jadi di ignore kan dan error hilang persis seperti error_reporting pada php)
  # def first_name
  # 	begin
  # 	# self.name.split[0] atau
  # 	self.name.split.first.oops
  # rescue
  # end
  # end

   # Fungsi dengan rescue
  def first_name
   # self.name.split[0] atau
  	self.name.split.first
  end

  def last_name
  	# self.name.split[1] atau
  	self.name.split.last
  end

  # Fungsi cobacoba aja pada part 108

  # def get_facebook_messages
  # 	contacts_fb.oops
  # 	@messages = retrieves_messages
  # rescue IOError => e
  # 	flash[:error] = "Error occured contacting Facebook: #{e}"
  # end

end
