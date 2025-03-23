class Environment < ApplicationRecord
  validates_uniqueness_of :name, :key
  has_many :environment_flags
  has_many :flags, through: :environment_flags

  after_create_commit :create_environment_flags

  def create_environment_flags
    Flag.all.each do |flag|
      EnvironmentFlag.create!({ environment: self, flag: flag })
    end
  end
end
