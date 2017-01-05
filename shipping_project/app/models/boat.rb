class Boat < ActiveRecord::Base
	has_and_belongs_to_many :jobs
	belongs_to :location
	belongs_to :user

	validates :name, presence: true, uniqueness: true
	validates :containers, presence: true, numericality: true
end