class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  validates :site_id, presence: true
end
