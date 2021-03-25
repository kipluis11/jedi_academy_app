class User < ApplicationRecord
  belongs_to :master
  has_many :trainings, through: :masters
  has_many :powers, through: :trainings
end
