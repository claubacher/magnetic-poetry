class Magnet < ActiveRecord::Base
  has_many :inclusions
  has_many :poems, :through => :inclusions
end
