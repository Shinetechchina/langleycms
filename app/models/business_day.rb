class BusinessDay < ActiveRecord::Base
  belongs_to :hotel

  validates :start_day, :presence => true
  validates :end_day,   :presence => true

end
