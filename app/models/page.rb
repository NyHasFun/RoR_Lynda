class Page < ActiveRecord::Base

	belongs_to :subject
	has_and_belongs_to_many :editors, :class_name => "AdminUser" 	#becuase we didnt :admin_users be have to identify the class
								# :join_table => "admin_users_pages"

end
