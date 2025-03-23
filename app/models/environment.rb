class Environment < ApplicationRecord
  validates_uniqueness_of :name, :key
  has_many :environment_flags
  has_many :flags, through: :environment_flags
end
