class AdminUser < ActiveRecord::Base

	#will automatically look for table name:
	#To configure to a different table
	#self.table_name = "admin_users"

	has_and_belongs_to_many :pages
	has_many :section_edits
	has_many :sections, :through => :section_edits


end
