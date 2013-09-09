class Menu < ActiveRecord::Base
  belongs_to :cafe
  attr_accessible :name, :price
end
