class Flag < ApplicationRecord
  validates_uniqueness_of :name, :key
  has_many :environment_flags
  has_many :environments, through: :environment_flags

  after_create_commit :create_environment_flags

  def create_environment_flags
    Environment.all.each do |env|
      EnvironmentFlag.create!({ environment: env, flag: self })
    end
  end
end
