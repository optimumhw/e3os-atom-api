class Rectable < ApplicationRecord
	validates :site_id, presence: true
	scope :latest!, -> (site_id) { 
		where("rectables.site_id = ?", site_id).last! }
end
