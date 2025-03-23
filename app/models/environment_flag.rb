class EnvironmentFlag < ApplicationRecord
  belongs_to :environment
  belongs_to :flag

  validates_uniqueness_of :environment_id, scope: :flag_id
  validates_presence_of :environment_id, :flag_id
end
