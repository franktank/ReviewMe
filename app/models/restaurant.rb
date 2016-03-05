class Restaurant < ActiveRecord::Base
  has_many :reviews
  belongs_to :category
  validates_presence_of :name
  validates_presence_of :city
  validates_presence_of :state
  validates_presence_of :description
 

end
