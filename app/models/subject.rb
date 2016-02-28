class Subject < ActiveRecord::Base

	has_many :pages

	scope :visible, lambda{ where(:visible =>true) }
	scope :invisible, lambda{ where(:visible => false)}
	scope :sorted, lambda{ order("subjects.postion ASC") }
	scope :newest_first, lambda{ order("subjects.created_at DESC")}
	scope :search, lambda{|query| 
		where(["name LIKE ?", "%#{query}%"])
	} 
		#|query| is the argument that we are passing into the scope
		#for the where we are using the array query method
		# is data in "name" LIKE the question mark
		# #{}interpolates the string %%tells you that its a wild card
end
