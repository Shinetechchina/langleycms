class Custom < ActiveRecord::Base
  has_many :peoples

  validates_presence_of :number_of_adults
end
