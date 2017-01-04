class Boat < ActiveRecord::Base
	has_and_belongs_to_many :jobs
	has_one :location

	validates :name, presence: true, uniqueness: true
	validates :containers, presence: true, numericality: true
end