class Rectable < ApplicationRecord
	validates :site_id, presence: true

	p "here...."
	#rectable = Rectable.find_by(params[:site_id]).order(:created_at).take
	scope :latest!, -> (site_id) { 
		p site_id
		where("rectables.site_id = ?", site_id).last! }
end
