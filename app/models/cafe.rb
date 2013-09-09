class Cafe < ActiveRecord::Base
  attr_accessible :discount, :location, :name, :open_hour, :open_hour_etc, :open_hour_fri, :open_hour_wknd, :seat, :wifi
  has_many :menus
end
