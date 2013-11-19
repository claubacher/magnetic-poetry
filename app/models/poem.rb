class Poem < ActiveRecord::Base
  has_many :inclusions
  has_many :magnets, :through => :inclusions
end
