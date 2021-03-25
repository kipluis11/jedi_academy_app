class Training < ApplicationRecord
  belongs_to :master
  has_many :powers
end
