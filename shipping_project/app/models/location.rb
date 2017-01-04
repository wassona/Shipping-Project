class Location < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true

	has_many :boats
	has_many :jobs_originating, class_name: 'Job'
	has_many :jobs_destined, class_name: 'Job'
end