class Master < ApplicationRecord
    has_many :users
    has_many :trainings
    has_many :powers, through: :trainings
end
