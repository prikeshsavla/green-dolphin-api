class Flag < ApplicationRecord
  validates_uniqueness_of :name, :key
  has_many :environment_flags
  has_many :environments, through: :environment_flags
end
