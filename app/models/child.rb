class Child < ActiveRecord::Base
  belongs_to :father

  def father_name
  	if self.father.blank?
  		" - "
  	else
  		self.father.name
  	end
  end
end
