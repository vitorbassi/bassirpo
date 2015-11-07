class Father < ActiveRecord::Base
	has_many :children
	belongs_to :occupation

	validates :name, presence: true
	validates :occupation_id, presence: true
	validates :email, uniqueness: true

	def occupation_description
		if self.occupation.blank?
			" - "
		else
			self.occupation.description	
		end
	end

	def children_create
		if self.children.name.blank?
			:back
		else
			children.create
		end
	end

	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
