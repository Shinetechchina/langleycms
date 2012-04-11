class People < ActiveRecord::Base
  belongs_to :custom

  validates_presence_of :first_name, :family_name, :is_child

end
