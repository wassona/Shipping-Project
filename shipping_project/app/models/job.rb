class Job < ActiveRecord::Base
	has_and_belongs_to_many :boats
	belongs_to :origin, class_name: 'Location', foreign_key: 'origin_id'
	belongs_to :destination, class_name: 'Location', foreign_key: 'destination_id'
	belongs_to :user

	validates :description, presence: true, length: {minimum: 50, maximum: 255}
	validates :cost, presence: true, numericality: { greater_than: 999 }
	validates :containers_needed, presence: true, numericality: true

	def containers_assigned
		result = 0
		self.boats.all.each do |b|
			result += b.containers
		end	
		result
	end



end
