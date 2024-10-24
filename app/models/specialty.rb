class Specialty < ApplicationRecord
  has_many :experiences
  has_many :doctors, through: :experiences
end
