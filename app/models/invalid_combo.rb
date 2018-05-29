class InvalidCombo < ApplicationRecord
	validates :site_id, presence: true
	validates :number_chillers, presence: true
	validates :invalid_entries, presence: true
end
